package uz.tiriktarix.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "tirik-tarix")
public record AppProperties(Cors cors, Chat chat, Quiz quiz, Auth auth, Admin admin, Voice voice,
                            Uploads uploads) {

    /**
     * Metodist yuklaydigan fayllar (portretlar).
     *
     * <p>{@code dir} — fayllar yotadigan papka. Standart qiymat loyihaning
     * ichida EMAS ataylab: {@code frontend/public/} ga yozish faqat lokal
     * ishlashda ko'rinadi, ishlab chiqarishda esa Next.js yig'ilgan papkani
     * o'zgartirmaydi va rasm yo'qoladi. Shuning uchun fayllarni backend o'zi
     * saqlaydi va o'zi beradi.
     *
     * <p>Kelajakda S3/R2 ga o'tilganda faqat {@code PortraitStorage} ning
     * ikkinchi amalga oshirilishi yoziladi — chaqiruvchi kod o'zgarmaydi.
     */
    public record Uploads(String dir) {

        public String dirOrDefault() {
            return dir == null || dir.isBlank()
                    ? System.getProperty("user.home") + "/.tirik-tarix/uploads"
                    : dir;
        }
    }

    /**
     * Ajdodlar ovozi. {@code enabledHeroes} — ovozi yoqilgan ajdod sluglari
     * (vergul bilan). Bosqichma-bosqich yoqiladi: avval amir-temur, qolganlari
     * sinovdan keyin.
     *
     * <p>{@code cacheEntries} — keshda saqlanadigan eng ko'p yozuv soni (V150).
     * 0 yoki manfiy — kesh o'chiriladi. Chegara kerak, chunki audio bazada
     * yotadi: bir jumla ~20–60 KB, ya'ni 1000 yozuv ≈ 40 MB.
     */
    public record Voice(String enabledHeroes, Integer cacheEntries) {

        /** Sozlanmagan bo'lsa — oqilona standart. */
        public int cacheEntriesOrDefault() {
            return cacheEntries == null ? 1000 : cacheEntries;
        }
    }

    public record Cors(String allowedOrigins) {
    }

    /**
     * JWT sozlamalari. Ishlab chiqarishda sir albatta env orqali beriladi.
     * {@code adminTokenHours} — panel sessiyasi: bolalar tokeniga qaraganda
     * ancha qisqa, chunki admin tokeni butun kontentga yozish huquqini beradi.
     */
    public record Auth(String jwtSecret, int tokenDays, int adminTokenHours) {
    }

    /**
     * Boshqaruv paneli. {@code username}/{@code password} — birinchi ishga
     * tushirishda yaratiladigan hisob (keyin parol paneldan almashtiriladi).
     * {@code secretsKey} — integratsiya kalitlarini shifrlash uchun (AES-GCM).
     */
    public record Admin(String username, String password, String secretsKey) {
    }

    public record Chat(String refusalNoFact, String refusalOffTopic, String llmModel) {
    }

    public record Quiz(int microQuizSize, int eraTestSize, int filmQuizSize, int xpPerCorrect) {
    }
}
