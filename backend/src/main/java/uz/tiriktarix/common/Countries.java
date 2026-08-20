package uz.tiriktarix.common;

import java.util.Set;

/**
 * Qaysi tarix ko'rsatilyapti (V105).
 *
 * <p>Loyiha boshida katalogda bitta tarix bor edi va uni hech kim
 * belgilamasdi. Ikkinchi tarix qo'shilishi bilan tanlov oshkor bo'ldi:
 * har bir ro'yxat so'rovi «qaysi mamlakat» degan savolga javob beradi.
 *
 * <p>ZAXIRA. So'rovda mamlakat ko'rsatilmasa yoki noma'lum qiymat kelsa —
 * {@code UZ}. Shu sabab eski mijoz (yangilanmagan ilova) ham avvalgidek
 * o'zbek tarixini ko'raveradi va hech narsa buzilmaydi.
 */
public final class Countries {

    /** O'zbekiston tarixi — loyihaning asosiy katalogi. */
    public static final String UZ = "UZ";

    /** Rossiya tarixi — mazmunini metodist paneldan to'ldiradi. */
    public static final String RU = "RU";

    private static final Set<String> SUPPORTED = Set.of(UZ, RU);

    private Countries() {
    }

    /**
     * So'rovdagi qiymatni tekshiradi.
     *
     * @param raw mijozdan kelgan qiymat, {@code null} bo'lishi mumkin
     * @return doim mavjud kod; noma'lum yoki bo'sh qiymatda {@link #UZ}
     */
    public static String normalize(String raw) {
        if (raw == null) {
            return UZ;
        }
        String upper = raw.trim().toUpperCase();
        return SUPPORTED.contains(upper) ? upper : UZ;
    }
}
