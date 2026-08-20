"use client";

import { useRouter } from "next/navigation";
import Link from "next/link";
import { useEffect, useState } from "react";
import { API_URL, AuthResponse, Gender, api, getClientId, saveSession } from "@/lib/api";
import {
  Archetype,
  ArchetypeCode,
  archetypeName,
  archetypeTagline,
  archetypesOf,
  defaultArchetype,
  fetchArchetypes,
} from "@/lib/archetypes";
import { fetchRegions, OTHER_DISTRICT, Region, districtsOf } from "@/lib/regions";
import Character from "@/components/art/Character";
import SectionTitle from "@/components/ui/SectionTitle";
import Panel from "@/components/ui/Panel";
import Button from "@/components/ui/Button";
import { CornerFrame } from "@/components/ui/Ornament";
import { Lang, pick, useLang, useT } from "@/lib/lang";

/*
  Viloyat va tuman NOMLARI tarjima qilinmaydi: ular atoqli ot va aynan shu
  holda bazaga yoziladi (regions.ts dagi izohga qarang). Bu yerda faqat
  yorliqlar, ko'rsatmalar va tugmalar tarjima qilinadi.
*/
const TXT = {
  ru: {
    genders: { MALE: "Мальчик", FEMALE: "Девочка" } as Record<Gender, string>,
    steps: {
      1: {
        overline: "Первый шаг",
        title: "Регистрация",
        subtitle: "Псевдоним и пароль — по всему сайту виден именно псевдоним.",
        label: "Аккаунт",
      },
      2: {
        overline: "Второй шаг",
        title: "О себе",
        subtitle:
          "Имя, фамилия, дата рождения и школа — чтобы учитель видел свой класс. Другие ученики этих данных не видят.",
        label: "Данные",
      },
      3: {
        overline: "Третий шаг",
        title: "Выбери своего героя",
        subtitle: "Мальчик или девочка — тип выберешь следом.",
        label: "Герой",
      },
      4: {
        overline: "Четвёртый шаг",
        title: "Выбери тип",
        subtitle: "Все типы открыты и бесплатны. Его можно сменить в любой момент.",
        label: "Тип",
      },
    },
    stepsAria: "Шаги регистрации",
    registerError: "Ошибка при регистрации",
    error: "Ошибка",
    username: "Псевдоним",
    usernamePlaceholder: "например: qaldirgoch_21",
    usernameTaken: "Этот псевдоним занят — придумай другой.",
    usernameFree: "Псевдоним свободен — можно брать!",
    usernameHint:
      "На сайте будет виден именно этот псевдоним — и в рейтинге, и в беседе. 3–20 букв, цифр или знаков подчёркивания.",
    password: "Пароль",
    passwordHint: "Минимум 6 знаков.",
    haveAccount: "У меня есть аккаунт",
    next: "Продолжить →",
    whoAreYou: "Кто ты",
    firstName: "Имя",
    lastName: "Фамилия",
    birthDate: "Дата рождения",
    tooYoung: "Регистрация — с 5 лет.",
    years: (n: number) => `${n} лет`,
    dateHint: "День, месяц и год.",
    whereStudy: "Где ты учишься",
    region: "Область",
    district: "Район",
    pickRegionFirst: "Сначала выбери область.",
    choose: "— выбери —",
    otherDistrict: "Другой район",
    districtNamePlaceholder: "Напиши название своего района",
    districtNameAria: "Название района",
    school: "Школа",
    schoolHint: "Например: 45-я школа или название школы.",
    schoolPlaceholder: "45-maktab",
    firstNamePlaceholder: "Ulug'bek",
    lastNamePlaceholder: "Rahimov",
    privacyA: "Эти данные",
    privacyB: "не видны другим ученикам",
    privacyC:
      ": и в рейтинге, и в беседе остаётся твой псевдоним. Имя и школа нужны только твоему учителю и сотрудникам проекта.",
    back: "← Назад",
    missing: "Не заполнено:",
    missingFields: {
      firstName: "имя",
      lastName: "фамилия",
      birthDate: "дата рождения",
      region: "область",
      district: "район",
      school: "школа",
    } as Record<string, string>,
    busy: "Подождите…",
    start: "Начинаем!",
  },
  uz: {
    genders: { MALE: "O'g'il bola", FEMALE: "Qiz bola" } as Record<Gender, string>,
    steps: {
      1: {
        overline: "Birinchi qadam",
        title: "Ro'yxatdan o'tish",
        subtitle: "Taxallus va parol — sayt bo'ylab shu taxallus ko'rinadi.",
        label: "Hisob",
      },
      2: {
        overline: "Ikkinchi qadam",
        title: "O'zing haqingda",
        subtitle:
          "Ism, familiya, tug'ilgan sana va maktab — o'qituvching sinfini ko'rishi uchun. Bu ma'lumotlarni boshqa o'quvchilar ko'rmaydi.",
        label: "Ma'lumotlar",
      },
      3: {
        overline: "Uchinchi qadam",
        title: "Qahramoningni tanla",
        subtitle: "O'g'il bolami yoki qiz bola — keyin tipini tanlaysan.",
        label: "Qahramon",
      },
      4: {
        overline: "To'rtinchi qadam",
        title: "Tipni tanla",
        subtitle: "Barcha tiplar ochiq va bepul. Uni keyin ham almashtirsa bo'ladi.",
        label: "Tip",
      },
    },
    stepsAria: "Ro'yxatdan o'tish qadamlari",
    registerError: "Ro'yxatdan o'tishda xatolik",
    error: "Xatolik",
    username: "Taxallus",
    usernamePlaceholder: "masalan: qaldirgoch_21",
    usernameTaken: "Bu taxallus band — boshqasini o'ylab top.",
    usernameFree: "Taxallus bo'sh — olsang bo'ladi!",
    usernameHint:
      "Saytda aynan shu taxallus ko'rinadi — reytingda ham, suhbatda ham. 3–20 ta harf, raqam yoki pastki chiziq.",
    password: "Parol",
    passwordHint: "Kamida 6 ta belgi.",
    haveAccount: "Hisobim bor",
    next: "Davom etish →",
    whoAreYou: "Sen kimsan",
    firstName: "Ism",
    lastName: "Familiya",
    birthDate: "Tug'ilgan sana",
    tooYoung: "Ro'yxatdan o'tish 5 yoshdan boshlanadi.",
    years: (n: number) => `${n} yosh`,
    dateHint: "Kun, oy va yil.",
    whereStudy: "Qayerda o'qiysan",
    region: "Viloyat",
    district: "Tuman",
    pickRegionFirst: "Avval viloyatni tanlang.",
    choose: "— tanlang —",
    otherDistrict: OTHER_DISTRICT,
    districtNamePlaceholder: "Tumaning nomini yoz",
    districtNameAria: "Tuman nomi",
    school: "Maktab",
    schoolHint: "Masalan: 45-maktab yoki maktab nomi.",
    schoolPlaceholder: "45-maktab",
    firstNamePlaceholder: "Ulug'bek",
    lastNamePlaceholder: "Rahimov",
    privacyA: "Bu ma'lumotlar",
    privacyB: "boshqa o'quvchilarga ko'rinmaydi",
    privacyC:
      ": reytingda ham, suhbatda ham taxallusing turadi. Ism va maktab faqat o'qituvching va loyiha xodimlari uchun kerak.",
    back: "← Orqaga",
    missing: "To'ldirilmagan:",
    missingFields: {
      firstName: "ism",
      lastName: "familiya",
      birthDate: "tug'ilgan sana",
      region: "viloyat",
      district: "tuman",
      school: "maktab",
    } as Record<string, string>,
    busy: "Kutib turing…",
    start: "Boshlaymiz!",
  },
  uk: {
    genders: { MALE: "Хлопчик", FEMALE: "Дівчинка" } as Record<Gender, string>,
    steps: {
      1: {
        overline: "Перший крок",
        title: "Реєстрація",
        subtitle: "Псевдонім і пароль — по всьому сайту видно саме псевдонім.",
        label: "Акаунт",
      },
      2: {
        overline: "Другий крок",
        title: "Про себе",
        subtitle:
          "Ім'я, прізвище, дата народження і школа — щоб учитель бачив свій клас. Інші учні цих даних не бачать.",
        label: "Дані",
      },
      3: {
        overline: "Третій крок",
        title: "Обери свого героя",
        subtitle: "Хлопчик чи дівчинка — тип обереш далі.",
        label: "Герой",
      },
      4: {
        overline: "Четвертий крок",
        title: "Обери тип",
        subtitle: "Усі типи відкриті й безкоштовні. Його можна змінити будь-коли.",
        label: "Тип",
      },
    },
    stepsAria: "Кроки реєстрації",
    registerError: "Помилка під час реєстрації",
    error: "Помилка",
    username: "Псевдонім",
    usernamePlaceholder: "наприклад: qaldirgoch_21",
    usernameTaken: "Цей псевдонім зайнято — придумай інший.",
    usernameFree: "Псевдонім вільний — можна брати!",
    usernameHint:
      "На сайті буде видно саме цей псевдонім — і в рейтингу, і в бесіді. 3–20 літер, цифр або знаків підкреслення.",
    password: "Пароль",
    passwordHint: "Щонайменше 6 знаків.",
    haveAccount: "У мене є акаунт",
    next: "Продовжити →",
    whoAreYou: "Хто ти",
    firstName: "Ім'я",
    lastName: "Прізвище",
    birthDate: "Дата народження",
    tooYoung: "Реєстрація — з 5 років.",
    years: (n: number) => `${n} років`,
    dateHint: "День, місяць і рік.",
    whereStudy: "Де ти навчаєшся",
    region: "Область",
    district: "Район",
    pickRegionFirst: "Спершу обери область.",
    choose: "— обери —",
    otherDistrict: "Інший район",
    districtNamePlaceholder: "Напиши назву свого району",
    districtNameAria: "Назва району",
    school: "Школа",
    schoolHint: "Наприклад: 45-та школа або назва школи.",
    schoolPlaceholder: "45-maktab",
    firstNamePlaceholder: "Ulug'bek",
    lastNamePlaceholder: "Rahimov",
    privacyA: "Ці дані",
    privacyB: "не видно іншим учням",
    privacyC:
      ": і в рейтингу, і в бесіді лишається твій псевдонім. Ім'я та школа потрібні лише твоєму вчителю й співробітникам проєкту.",
    back: "← Назад",
    missing: "Не заповнено:",
    missingFields: {
      firstName: "ім'я",
      lastName: "прізвище",
      birthDate: "дата народження",
      region: "область",
      district: "район",
      school: "школа",
    } as Record<string, string>,
    busy: "Зачекайте…",
    start: "Починаємо!",
  },
};


const GENDERS: Gender[] = ["MALE", "FEMALE"];

type Step = 1 | 2 | 3 | 4;

const FIELD_CLASS =
  "mt-2 w-full rounded-md border border-zar/25 bg-steel/70 px-4 py-3 text-parchment outline-none transition-colors placeholder:text-dust/60 focus:border-zar/70";

const STEPS: Step[] = [1, 2, 3, 4];

/**
 * Qadamlar yo'lkasi. Avval to'rtta chiziqcha edi — bola nechanchi qadamda
 * turganini va oldinda yana nima borligini bilmasdi. Endi har qadamning
 * raqami va nomi bor, o'tilganlari zar belgi bilan yopiladi.
 */
function Steps({ step, lang }: { step: Step; lang: Lang }) {
  const t = pick(TXT, lang);
  return (
    <ol className="mx-auto flex max-w-2xl items-start justify-center" aria-label={t.stepsAria}>
      {STEPS.map((n, i) => {
        const done = n < step;
        const current = n === step;
        return (
          <li
            key={n}
            aria-current={current ? "step" : undefined}
            className="flex flex-1 flex-col items-center gap-2"
          >
            <span className="flex w-full items-center">
              <span className={`h-px flex-1 ${i === 0 ? "bg-transparent" : done || current ? "bg-zar/55" : "bg-steel-2"}`} />
              <span
                className={`grid h-9 w-9 shrink-0 place-items-center rounded-full border font-display text-xs font-bold transition-colors duration-500 ${
                  done
                    ? "border-zar/60 bg-zar/15 text-zar-bright"
                    : current
                      ? "border-zar bg-[linear-gradient(160deg,#c8a247,#7a5f1c)] text-obsidian"
                      : "border-steel-2 bg-steel/60 text-dust/70"
                }`}
              >
                {/* Belgi — SVG: Cinzel da «✓» ingichka chiqadi va ko'rinmay ketadi */}
                {done ? (
                  <svg viewBox="0 0 20 20" className="h-4 w-4" fill="none" stroke="currentColor" strokeWidth="2.4">
                    <path d="M4.5 10.5 L8.5 14.5 L15.5 5.5" strokeLinecap="round" strokeLinejoin="round" />
                  </svg>
                ) : (
                  n
                )}
              </span>
              <span
                className={`h-px flex-1 ${i === STEPS.length - 1 ? "bg-transparent" : done ? "bg-zar/55" : "bg-steel-2"}`}
              />
            </span>
            <span
              className={`text-center text-[10px] font-semibold uppercase tracking-[0.14em] ${
                current ? "text-zar-bright" : done ? "text-dust" : "text-dust/55"
              }`}
            >
              {t.steps[n].label}
            </span>
          </li>
        );
      })}
    </ol>
  );
}

/** Kiritilgan sanadan to'la yosh. Bola «necha yosh chiqdi» ni ko'rib tursin. */
function ageOf(iso: string): number | null {
  if (!iso) return null;
  const born = new Date(iso);
  if (Number.isNaN(born.getTime())) return null;
  const now = new Date();
  let years = now.getFullYear() - born.getFullYear();
  const monthDiff = now.getMonth() - born.getMonth();
  if (monthDiff < 0 || (monthDiff === 0 && now.getDate() < born.getDate())) years--;
  return years;
}

/** Maydonlar guruhining sarlavhasi — shakl bir uyum input bo'lib qolmasin. */
function GroupTitle({ children }: { children: React.ReactNode }) {
  return (
    <p className="flex items-center gap-3 pt-2 font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/80">
      {children}
      <span aria-hidden className="h-px flex-1 bg-gradient-to-r from-zar/35 to-transparent" />
    </p>
  );
}

const HINT_TONE = {
  dust: "text-dust",
  ok: "text-zar/90",
  warn: "text-[#e8a99f]",
} as const;

/** Bitta maydon: yorliq, maydonning o'zi va (kerak bo'lsa) qisqa izoh. */
function Field({
  id,
  label,
  hint,
  tone = "dust",
  children,
}: {
  id: string;
  label: string;
  hint?: string;
  /** Izohning ohangi: oddiy, tasdiq (yosh chiqdi) yoki ogohlantirish. */
  tone?: keyof typeof HINT_TONE;
  children: React.ReactNode;
}) {
  return (
    <div>
      <label
        htmlFor={id}
        className="font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90"
      >
        {label}
      </label>
      {children}
      {hint && <p className={`mt-2 text-xs leading-relaxed ${HINT_TONE[tone]}`}>{hint}</p>}
    </div>
  );
}

export default function RegisterPage() {
  const t = useT(TXT);
  const { lang } = useLang();
  const router = useRouter();
  const [step, setStep] = useState<Step>(1);
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [gender, setGender] = useState<Gender>("MALE");
  const [archetype, setArchetype] = useState<ArchetypeCode>("oddiy-yigit");
  const [error, setError] = useState<string | null>(null);
  const [busy, setBusy] = useState(false);

  // Shaxsiy ma'lumotlar (V91)
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [birthDate, setBirthDate] = useState("");
  const [region, setRegion] = useState("");
  const [district, setDistrict] = useState("");
  const [otherDistrict, setOtherDistrict] = useState("");
  /* Viloyatlar bazadan keladi (V106). Ro'yxat kelmasa shakl baribir ishlaydi:
     tumanlar ro'yxatida «Boshqa tuman» qoladi va bola nomini o'zi yozadi. */
  const [regions, setRegions] = useState<Region[]>([]);
  /* Tiplar ro'yxati bazadan (V107): nom va ta'rif u yerda, chizmasi esa
     kodda — shuning uchun `defaultArchetype` serverga bog'liq emas. */
  const [archetypes, setArchetypes] = useState<Archetype[]>([]);

  useEffect(() => {
    fetchRegions().then(setRegions);
    fetchArchetypes().then(setArchetypes);
  }, []);
  const [school, setSchool] = useState("");

  /*
    Taxallus bandligi BIRINCHI qadamda tekshiriladi. Ilgari bandlik faqat
    yakuniy yuborishda ma'lum bo'lardi — bola to'rt qadamni to'ldirib bo'lib,
    «Bu taxallus band» xatosiga urilardi. Endi yozayotganda darhol ko'rinadi.
    Tarmoq yiqilsa holat "unknown" bo'lib qoladi va yo'lni to'smaydi — yakuniy
    tekshiruv baribir serverda bor.
  */
  const [usernameTaken, setUsernameTaken] = useState<boolean | null>(null);

  useEffect(() => {
    const name = username.trim();
    // setState taymer ichida — effekt tanasida sinxron chaqirilmasin
    if (name.length < 3) {
      const reset = window.setTimeout(() => setUsernameTaken(null), 0);
      return () => window.clearTimeout(reset);
    }
    const timer = window.setTimeout(() => {
      api<{ valid: boolean; available: boolean }>(
        `/api/auth/username-available?username=${encodeURIComponent(name)}`
      )
        .then((r) => setUsernameTaken(r.valid ? !r.available : null))
        .catch(() => setUsernameTaken(null));
    }, 350);
    return () => window.clearTimeout(timer);
  }, [username]);

  const canContinue =
    username.trim().length >= 3 && password.length >= 6 && usernameTaken !== true;
  const districts = districtsOf(regions, region);
  /** «Boshqa tuman» tanlansa — tuman nomi qo'lda yoziladi. */
  const districtValue = district === OTHER_DISTRICT ? otherDistrict.trim() : district;
  const age = ageOf(birthDate);
  /* Nima to'ldirilmagani ochiq yoziladi: o'chirilgan tugma sababini
     aytmasa, bola qaysi maydonni o'tkazib yuborganini topa olmaydi. */
  const missing = [
    firstName.trim().length < 2 && "firstName",
    lastName.trim().length < 2 && "lastName",
    !birthDate && "birthDate",
    !region && "region",
    !districtValue && "district",
    school.trim().length < 2 && "school",
  ]
    .filter((x): x is string => typeof x === "string")
    .map((key) => t.missingFields[key]);
  // Yosh chegarasi serverda ham tekshiriladi — bu yerda oldindan aytiladi
  const tooYoung = age !== null && age < 5;
  const canContinueDetails = missing.length === 0 && !tooYoung;
  const options = archetypesOf(archetypes, gender);

  /** Jins almashsa, tip ham yangi jinsning oddiy tipiga qaytadi. */
  function chooseGender(next: Gender) {
    setGender(next);
    setArchetype(defaultArchetype(next));
  }

  async function submit() {
    setBusy(true);
    setError(null);
    try {
      const res = await fetch(`${API_URL}/api/auth/register`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          username: username.trim(),
          password,
          gender,
          archetype,
          firstName: firstName.trim(),
          lastName: lastName.trim(),
          birthDate,
          region,
          district: districtValue,
          school: school.trim(),
          // Mehmon sifatida to'plagan XP yo'qolmasligi uchun
          anonymousClientId: getClientId(),
        }),
      });
      const body = await res.json();
      if (!res.ok) {
        throw new Error(body?.message ?? t.registerError);
      }
      const auth = body as AuthResponse;
      saveSession(auth.token!, auth.clientId);
      router.push("/profil");
    } catch (e) {
      setError(e instanceof Error ? e.message : t.error);
    } finally {
      setBusy(false);
    }
  }

  return (
    <div className="mx-auto max-w-4xl space-y-10">
      <SectionTitle
        overline={t.steps[step].overline}
        title={t.steps[step].title}
        subtitle={t.steps[step].subtitle}
      />

      <Steps step={step} lang={lang} />

      {error && (
        <Panel tone="hollow" className="p-4 text-center">
          <p className="text-sm text-[#e8a99f]">{error}</p>
        </Panel>
      )}

      {step === 1 && (
        <Panel corners girih className="tt-reveal mx-auto max-w-3xl space-y-5 p-7 sm:p-9">
          <div>
            <label
              htmlFor="username"
              className="font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90"
            >
              {t.username}
            </label>
            <input
              id="username"
              value={username}
              onChange={(e) => setUsername(e.target.value)}
              maxLength={20}
              autoComplete="off"
              placeholder={t.usernamePlaceholder}
              aria-invalid={usernameTaken === true}
              className={`mt-2 w-full rounded-md border bg-steel/70 px-4 py-3 text-parchment outline-none transition-colors placeholder:text-dust/60 ${
                usernameTaken === true
                  ? "border-qon/70 focus:border-qon"
                  : "border-zar/25 focus:border-zar/70"
              }`}
            />
            {usernameTaken === true ? (
              <p className="mt-2 text-xs leading-relaxed text-[#e8a99f]">{t.usernameTaken}</p>
            ) : usernameTaken === false ? (
              <p className="mt-2 text-xs leading-relaxed text-zar/90">{t.usernameFree}</p>
            ) : (
              <p className="mt-2 text-xs leading-relaxed text-dust">{t.usernameHint}</p>
            )}
          </div>

          <div>
            <label
              htmlFor="password"
              className="font-display text-[10px] font-semibold uppercase tracking-[0.28em] text-zar/90"
            >
              {t.password}
            </label>
            <input
              id="password"
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              className="mt-2 w-full rounded-md border border-zar/25 bg-steel/70 px-4 py-3 text-parchment outline-none transition-colors focus:border-zar/70"
            />
            <p className="mt-2 text-xs text-dust">{t.passwordHint}</p>
          </div>

          <div className="flex flex-wrap items-center justify-between gap-4 pt-2">
            <Link
              href="/kirish"
              className="font-display text-[11px] font-semibold uppercase tracking-[0.2em] text-dust transition-colors hover:text-zar"
            >
              {t.haveAccount}
            </Link>
            <Button variant="zar" size="md" disabled={!canContinue} onClick={() => setStep(2)}>
              {t.next}
            </Button>
          </div>
        </Panel>
      )}

      {/*
        ===================== Shaxsiy ma'lumotlar (V91) =====================
        Bu yerda bolaning HAQIQIY ismi so'raladi — maktab bilan ishlash uchun.
        Shuning uchun shakl ostida ochiq yoziladi: bu ma'lumotlarni boshqa
        o'quvchilar ko'rmaydi, saytda taxallus qoladi.
      */}
      {step === 2 && (
        <Panel corners girih className="tt-reveal mx-auto max-w-3xl space-y-6 p-7 sm:p-9">
          <GroupTitle>{t.whoAreYou}</GroupTitle>
          <div className="grid gap-5 sm:grid-cols-2">
            <Field id="firstName" label={t.firstName}>
              <input
                id="firstName"
                value={firstName}
                onChange={(e) => setFirstName(e.target.value)}
                maxLength={60}
                autoComplete="given-name"
                placeholder={t.firstNamePlaceholder}
                className={FIELD_CLASS}
              />
            </Field>

            <Field id="lastName" label={t.lastName}>
              <input
                id="lastName"
                value={lastName}
                onChange={(e) => setLastName(e.target.value)}
                maxLength={60}
                autoComplete="family-name"
                placeholder={t.lastNamePlaceholder}
                className={FIELD_CLASS}
              />
            </Field>

            <Field
              id="birthDate"
              label={t.birthDate}
              hint={tooYoung ? t.tooYoung : age !== null ? t.years(age) : t.dateHint}
              tone={tooYoung ? "warn" : age !== null ? "ok" : "dust"}
            >
              <input
                id="birthDate"
                type="date"
                value={birthDate}
                onChange={(e) => setBirthDate(e.target.value)}
                max={new Date().toISOString().slice(0, 10)}
                className={FIELD_CLASS}
              />
            </Field>
          </div>

          <GroupTitle>{t.whereStudy}</GroupTitle>
          <div className="grid gap-5 sm:grid-cols-2">
            <Field id="region" label={t.region}>
              <select
                id="region"
                value={region}
                onChange={(e) => {
                  setRegion(e.target.value);
                  setDistrict("");
                  setOtherDistrict("");
                }}
                className={FIELD_CLASS}
              >
                <option value="">{t.choose}</option>
                {regions.map((r) => (
                  <option key={r.nameUz} value={r.nameUz}>
                    {r.nameUz}
                  </option>
                ))}
              </select>
            </Field>

            <Field
              id="district"
              label={t.district}
              hint={region ? undefined : t.pickRegionFirst}
            >
              <select
                id="district"
                value={district}
                disabled={!region}
                onChange={(e) => setDistrict(e.target.value)}
                className={`${FIELD_CLASS} disabled:opacity-50`}
              >
                <option value="">{t.choose}</option>
                {districts.map((d) => (
                  <option key={d} value={d}>
                    {d === OTHER_DISTRICT ? t.otherDistrict : d}
                  </option>
                ))}
              </select>
              {district === OTHER_DISTRICT && (
                <input
                  value={otherDistrict}
                  onChange={(e) => setOtherDistrict(e.target.value)}
                  maxLength={80}
                  placeholder={t.districtNamePlaceholder}
                  aria-label={t.districtNameAria}
                  className={`${FIELD_CLASS} mt-2`}
                />
              )}
            </Field>

            <Field id="school" label={t.school} hint={t.schoolHint}>
              <input
                id="school"
                value={school}
                onChange={(e) => setSchool(e.target.value)}
                maxLength={120}
                placeholder={t.schoolPlaceholder}
                className={FIELD_CLASS}
              />
            </Field>
          </div>

          <p className="border-t border-steel-2 pt-4 text-xs leading-relaxed text-dust">
            {t.privacyA} <span className="text-zar/90">{t.privacyB}</span>
            {t.privacyC}
          </p>

          <div className="flex flex-wrap items-center justify-between gap-4 pt-1">
            <button
              onClick={() => setStep(1)}
              className="font-display text-[11px] font-semibold uppercase tracking-[0.2em] text-dust transition-colors hover:text-zar"
            >
              {t.back}
            </button>
            <div className="flex flex-wrap items-center gap-4">
              {missing.length > 0 && (
                <p className="text-xs text-dust/80">
                  {t.missing} <span className="text-zar/90">{missing.join(", ")}</span>
                </p>
              )}
              <Button
                variant="zar"
                size="md"
                disabled={!canContinueDetails}
                onClick={() => setStep(3)}
              >
                {t.next}
              </Button>
            </div>
          </div>
        </Panel>
      )}

      {step === 3 && (
        <div className="space-y-8">
          <div className="mx-auto grid max-w-3xl gap-5 sm:grid-cols-2">
            {GENDERS.map((code) => {
              const active = gender === code;
              return (
                <button
                  key={code}
                  onClick={() => chooseGender(code)}
                  aria-pressed={active}
                  className={`tt-steel-surface relative flex flex-col items-center overflow-hidden rounded-lg border p-6 transition-all duration-500 ease-tt ${
                    active ? "border-zar/80 -translate-y-1" : "border-zar/25 hover:border-zar/50"
                  }`}
                  style={{ boxShadow: "var(--tt-shadow-niche), var(--tt-inset-gleam)" }}
                >
                  {active && <CornerFrame />}
                  <Character
                    gender={code}
                    archetype={defaultArchetype(code)}
                    equipped={{ BODY: "oddiy-chopon", HEAD: "doppi" }}
                    size={150}
                  />
                  <span
                    className={`mt-4 font-display text-sm font-bold uppercase tracking-[0.14em] ${
                      active ? "text-zar-bright" : "text-marble"
                    }`}
                  >
                    {t.genders[code]}
                  </span>
                </button>
              );
            })}
          </div>

          <div className="flex flex-wrap items-center justify-between gap-4">
            <button
              onClick={() => setStep(2)}
              className="font-display text-[11px] font-semibold uppercase tracking-[0.2em] text-dust transition-colors hover:text-zar"
            >
              {t.back}
            </button>
            <Button variant="zar" size="md" onClick={() => setStep(4)}>
              {t.next}
            </Button>
          </div>
        </div>
      )}

      {step === 4 && (
        <div className="space-y-8">
          {/*
            Beshta kartochka — har birida qahramon TO'LIQ BO'YDA.
            Mobilda gorizontal svayp, kengroq ekranda 5 ustunli tarmoq.
          */}
          <div className="tt-no-scrollbar -mx-4 flex snap-x snap-mandatory gap-4 overflow-x-auto px-4 pb-2 sm:mx-0 sm:grid sm:grid-cols-3 sm:overflow-visible sm:px-0 lg:grid-cols-5">
            {options.map((option) => {
              const active = archetype === option.code;
              return (
                <button
                  key={option.code}
                  onClick={() => setArchetype(option.code)}
                  aria-pressed={active}
                  className={`tt-steel-surface relative flex w-[15rem] shrink-0 snap-center flex-col items-center overflow-hidden rounded-lg border p-4 transition-all duration-500 ease-tt sm:w-auto ${
                    active ? "border-zar/80 sm:-translate-y-1" : "border-zar/25 hover:border-zar/50"
                  }`}
                  style={{ boxShadow: "var(--tt-shadow-niche), var(--tt-inset-gleam)" }}
                >
                  {active && <CornerFrame />}
                  {/* Jihozsiz — shunda tipning o'z libosi va bosh kiyimi ko'rinadi */}
                  <Character gender={option.gender} archetype={option.code} size={132} />
                  <span
                    className={`mt-3 font-display text-xs font-bold uppercase tracking-[0.1em] ${
                      active ? "text-zar-bright" : "text-marble"
                    }`}
                  >
                    {archetypeName(archetypes, option.code, lang)}
                  </span>
                  <span className="mt-2 text-center text-[11px] leading-relaxed text-dust">
                    {archetypeTagline(option, lang)}
                  </span>
                </button>
              );
            })}
          </div>

          <div className="flex flex-wrap items-center justify-between gap-4">
            <button
              onClick={() => setStep(3)}
              className="font-display text-[11px] font-semibold uppercase tracking-[0.2em] text-dust transition-colors hover:text-zar"
            >
              {t.back}
            </button>
            <Button variant="zar" size="lg" sweep disabled={busy} onClick={submit}>
              {busy ? t.busy : t.start}
            </Button>
          </div>
        </div>
      )}
    </div>
  );
}
