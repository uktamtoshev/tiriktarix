#!/usr/bin/env bash
#
# Tirik tarix — bazaning zaxira nusxasi.
#
# NEGA KERAK. Baza — loyihaning eng qimmat qismi: 1500 dan ortiq fakt kartochkasi
# metodist tomonidan qo'lda tekshirilgan. Ular faqat shu noutbukda yashaydi.
# Disk buzilsa yoki `dropdb` xato yozilsa — hammasi yo'qoladi va uni qaytarib
# bo'lmaydi. Shuning uchun nusxa har kuni olinadi.
#
# NEGA -Fc (custom format), oddiy .sql emas. Siqilgan (549K ~ 12MB o'rniga) va
# `pg_restore` bilan tanlab tiklash mumkin: bitta jadvalni ham qaytarish mumkin,
# butun bazani emas.
#
# ISHLATISH:
#   tools/backup-db.sh              — nusxa oladi
#   tools/backup-db.sh --list       — mavjud nusxalarni ko'rsatadi
#
# TIKLASH (diqqat: joriy ma'lumot o'chadi):
#   pg_restore -d tirik_tarix --clean --if-exists backups/<fayl>.dump

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DIR="$ROOT/backups"
DB="${DB_NAME:-tirik_tarix}"
KEEP=14

mkdir -p "$DIR"

if [ "${1:-}" = "--list" ]; then
  ls -lh "$DIR"/*.dump 2>/dev/null || echo "Zaxira nusxalari yo'q"
  exit 0
fi

# Homebrew Postgres launchd ostida ishga tushganda PATH da bo'lmaydi.
export PATH="/usr/local/opt/postgresql@16/bin:/opt/homebrew/opt/postgresql@16/bin:$PATH"

OUT="$DIR/${DB}_$(date +%Y%m%d_%H%M%S).dump"

# `voice_cache` — MA'LUMOT emas, kesh: sintez qilingan audio (V108). Uni
# nusxaga olish shart emas — matn joyida, ovozni qaytadan sintez qilsa bo'ladi.
# Olinsa, 640 KB lik nusxa o'nlab megabaytga o'sardi va hech qanday foyda
# bermasdi. Jadvalning O'ZI (tuzilishi) nusxada qoladi, faqat mazmuni emas.
pg_dump -Fc -d "$DB" --exclude-table-data=voice_cache -f "$OUT"

# Nusxa haqiqatan o'qiladimi — tekshiramiz. Buzilgan fayl «bor» bo'lgani bilan
# tiklanmaydi, va buni faqat falokat kunida bilib qolish eng yomon variant.
if ! pg_restore -l "$OUT" >/dev/null 2>&1; then
  echo "XATO: nusxa buzuq — $OUT" >&2
  rm -f "$OUT"
  exit 1
fi

echo "Nusxa olindi: $OUT ($(du -h "$OUT" | cut -f1))"

# Eski nusxalarni tozalash: oxirgi $KEEP tasi qoladi.
ls -t "$DIR"/*.dump 2>/dev/null | tail -n +$((KEEP + 1)) | while read -r old; do
  rm -f "$old"
  echo "Eski nusxa o'chirildi: $(basename "$old")"
done
