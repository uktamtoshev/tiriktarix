package uz.tiriktarix.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * O'zbek lotin matnini solishtirish uchun normallashtirish: har xil apostrof
 * belgilari (oʻ, o', o`) bir ko'rinishga keltiriladi.
 */
public final class TextNormalizer {

    private static final Pattern APOSTROPHES = Pattern.compile("[ʻʼ'`´’‘]");
    private static final Pattern NON_WORD = Pattern.compile("[^a-z0-9а-яё\\s-]");
    private static final Pattern YEAR = Pattern.compile("\\b(\\d{3,4})\\b");

    private TextNormalizer() {
    }

    public static String normalize(String text) {
        if (text == null) {
            return "";
        }
        String lower = text.toLowerCase().replace("ў", "o").replace("ғ", "g");
        lower = APOSTROPHES.matcher(lower).replaceAll("");
        lower = NON_WORD.matcher(lower).replaceAll(" ");
        return lower.replaceAll("\\s+", " ").trim();
    }

    /** Matndan yil raqamlarini ajratib oladi (masalan, "1405" yoki "985"). */
    public static java.util.List<Integer> extractYears(String text) {
        java.util.List<Integer> years = new java.util.ArrayList<>();
        Matcher m = YEAR.matcher(text == null ? "" : text);
        while (m.find()) {
            years.add(Integer.parseInt(m.group(1)));
        }
        return years;
    }
}
