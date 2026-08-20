#!/usr/bin/env bash
#
# Tirik tarix — lokal serverlarni ishga tushirish/to'xtatish.
#
# NEGA KERAK. Backend va frontend uzoq ishlaydigan jarayonlar. Ular terminal
# yoki tahrirlash sessiyasi yopilganda ham tirik qolishi kerak, aks holda har
# safar qaytadan ko'tarish kerak bo'ladi. Shu bois `nohup` + `disown`: jarayon
# ota-jarayondan uziladi va SIGHUP olmaydi.
#
# ISHLATISH:
#   tools/serve.sh start     — ikkalasini ko'taradi (allaqachon ishlayotgani tegilmaydi)
#   tools/serve.sh stop      — ikkalasini to'xtatadi
#   tools/serve.sh restart
#   tools/serve.sh status
#   tools/serve.sh logs backend|frontend
#
# Faqat bittasi kerak bo'lsa: `tools/serve.sh start frontend`

set -u

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
RUN_DIR="$ROOT/.run"
BACKEND_PORT=8080
FRONTEND_PORT=55708

mkdir -p "$RUN_DIR"

pid_file()  { echo "$RUN_DIR/$1.pid"; }
log_file()  { echo "$RUN_DIR/$1.log"; }
port_of()   { [ "$1" = "backend" ] && echo "$BACKEND_PORT" || echo "$FRONTEND_PORT"; }

# Port band bo'lsa — xizmat ishlayapti. PID fayldan ishonchliroq: jarayon
# qayta ishga tushirilgan yoki qo'lda o'ldirilgan bo'lishi mumkin.
alive() {
  lsof -ti :"$(port_of "$1")" >/dev/null 2>&1
}

start_one() {
  local name="$1"
  if alive "$name"; then
    echo "  $name — allaqachon ishlayapti (port $(port_of "$name"))"
    return 0
  fi

  local log; log="$(log_file "$name")"
  if [ "$name" = "backend" ]; then
    ( cd "$ROOT/backend" && nohup mvn -q spring-boot:run >"$log" 2>&1 & echo $! >"$(pid_file backend)" )
  else
    # Portni ANIQ berish shart: `next dev` o'zicha 3000 ni oladi, loyihada esa
    # frontend 55708 da kutiladi (.claude/launch.json va CORS ro'yxati shunga mos).
    ( cd "$ROOT/frontend" && nohup npm run dev -- -p "$FRONTEND_PORT" >"$log" 2>&1 & echo $! >"$(pid_file frontend)" )
  fi
  echo "  $name — ishga tushirildi, jurnal: $log"
}

wait_one() {
  local name="$1" url tries=60
  if [ "$name" = "backend" ]; then
    url="http://localhost:$BACKEND_PORT/api/eras"
  else
    url="http://localhost:$FRONTEND_PORT/"
  fi
  for _ in $(seq 1 $tries); do
    local code
    code="$(curl -s -o /dev/null -w '%{http_code}' "$url" --max-time 3 || true)"
    case "$code" in
      200|30*) echo "  $name — tayyor ($url)"; return 0 ;;
    esac
    sleep 3
  done
  echo "  $name — javob bermadi. Jurnalga qara: $(log_file "$name")"
  return 1
}

stop_one() {
  local name="$1" port; port="$(port_of "$name")"
  local pids; pids="$(lsof -ti :"$port" 2>/dev/null || true)"
  if [ -z "$pids" ]; then
    echo "  $name — ishlamayapti"
    return 0
  fi
  # shellcheck disable=SC2086
  kill $pids 2>/dev/null
  sleep 2
  pids="$(lsof -ti :"$port" 2>/dev/null || true)"
  # shellcheck disable=SC2086
  [ -n "$pids" ] && kill -9 $pids 2>/dev/null
  rm -f "$(pid_file "$name")"
  echo "  $name — to'xtatildi"
}

status_one() {
  if alive "$1"; then
    echo "  $1 — ishlayapti (http://localhost:$(port_of "$1"))"
  else
    echo "  $1 — o'chiq"
  fi
}

targets() {
  if [ $# -ge 1 ] && [ -n "${1:-}" ]; then echo "$1"; else echo "backend frontend"; fi
}

cmd="${1:-start}"
shift || true

case "$cmd" in
  start)
    for s in $(targets "$@"); do start_one "$s"; done
    for s in $(targets "$@"); do wait_one "$s"; done
    ;;
  stop)
    for s in $(targets "$@"); do stop_one "$s"; done
    ;;
  restart)
    for s in $(targets "$@"); do stop_one "$s"; done
    for s in $(targets "$@"); do start_one "$s"; done
    for s in $(targets "$@"); do wait_one "$s"; done
    ;;
  status)
    for s in $(targets "$@"); do status_one "$s"; done
    ;;
  logs)
    tail -f "$(log_file "${1:-frontend}")"
    ;;
  *)
    echo "Noma'lum buyruq: $cmd"
    echo "Ishlatish: tools/serve.sh {start|stop|restart|status|logs} [backend|frontend]"
    exit 1
    ;;
esac
