package uz.tiriktarix.avatar;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;
import uz.tiriktarix.avatar.AvatarUnlockService.Labels;
import uz.tiriktarix.avatar.AvatarUnlockService.QuestStats;
import uz.tiriktarix.profile.LearnerProfile;
import uz.tiriktarix.profile.LearnerProfileRepository;

/**
 * Qahramon jihozlari mantiqi.
 *
 * Asosiy qoida: jihozning ochiqligi hech qayerda saqlanmaydi — u profil
 * ko'rsatkichlari va faoliyat tarixidan hisoblanadi ({@link AvatarUnlockService}).
 * Demak XP sarflanmaydi va bir marta ochilgan jihoz keyin yopilib qolmaydi.
 */
@Service
public class AvatarService {

    /** Ro'yxatdan o'tganda darhol kiyiladigan boshlang'ich jihoz. */
    private static final List<String> STARTER_ITEMS = List.of("oddiy-chopon", "doppi");

    /**
     * @param rarity   COMMON yoki RARE — vitrinadagi belgi.
     * @param priceUzs faqat PAID jihozda to'la, qolganlarida null.
     */
    public record ItemView(String code, String nameUz, String slot, String descriptionUz,
                           String unlockType, int unlockValue, String unlockRef,
                           String requirementUz, boolean unlocked,
                           int progress, int target,
                           String nameRu, String descriptionRu,
                           String rarity, Integer priceUzs) {
    }

    public record AvatarState(String gender, String archetype, Map<String, String> equipped,
                              List<ItemView> items) {
    }

    /** Sinov natijasida yangi ochilgan jihoz. */
    public record UnlockedItem(String code, String nameUz, String slot) {
    }

    private final AvatarItemRepository itemRepository;
    private final AvatarEquipmentRepository equipmentRepository;
    private final LearnerProfileRepository profileRepository;
    private final AvatarUnlockService unlockService;
    private final ArchetypeService archetypes;

    public AvatarService(AvatarItemRepository itemRepository,
                         AvatarEquipmentRepository equipmentRepository,
                         LearnerProfileRepository profileRepository,
                         AvatarUnlockService unlockService,
                         ArchetypeService archetypes) {
        this.itemRepository = itemRepository;
        this.equipmentRepository = equipmentRepository;
        this.profileRepository = profileRepository;
        this.unlockService = unlockService;
        this.archetypes = archetypes;
    }

    @Transactional(readOnly = true)
    public AvatarState stateOf(String clientId) {
        LearnerProfile profile = requireProfile(clientId);
        // Bitta surat — 30 dan ortiq jihoz shu bo'yicha tekshiriladi
        QuestStats stats = unlockService.statsOf(profile);
        Labels labels = unlockService.labels();

        Map<Long, AvatarItem> byId = new LinkedHashMap<>();
        List<AvatarItem> all = itemRepository.findAllByOrderByOrdinalAsc();
        all.forEach(i -> byId.put(i.getId(), i));
        Map<String, String> equipped = equippedOf(profile.getId(), byId);

        List<ItemView> views = new ArrayList<>();
        for (AvatarItem item : all) {
            boolean unlocked = AvatarUnlockService.isUnlocked(item, stats);
            int[] p = AvatarUnlockService.progressOf(item, stats);
            views.add(new ItemView(item.getCode(), item.getNameUz(), item.getSlot(),
                    item.getDescriptionUz(), item.getUnlockType(), item.getUnlockValue(),
                    item.getUnlockRef(), AvatarUnlockService.requirementUz(item, labels),
                    unlocked, Math.min(p[0], p[1]), p[1],
                    item.getNameRu(), item.getDescriptionRu(),
                    item.getRarity(), item.getPriceUzs()));
        }
        return new AvatarState(profile.getAvatarGender(), archetypeOf(profile), equipped, views);
    }

    private Map<String, String> equippedOf(Long profileId, Map<Long, AvatarItem> byId) {
        Map<String, String> equipped = new LinkedHashMap<>();
        for (AvatarEquipment e : equipmentRepository.findByProfileId(profileId)) {
            AvatarItem item = byId.get(e.getItemId());
            if (item != null) {
                equipped.put(e.getSlot(), item.getCode());
            }
        }
        return equipped;
    }

    /** Bellashuv arenasida jangchini chizish uchun — butun katalogsiz, faqat ko'rinish. */
    public record AvatarLook(String gender, String archetype, Map<String, String> equipped) {
    }

    /**
     * Bellashuv uchun yengil ko'rinish: jins, tip, kiyilgan jihozlar — jihoz
     * kataloги va ochilish holati kerak emas ({@link #stateOf} dan farqi shu).
     */
    @Transactional(readOnly = true)
    public AvatarLook lookOf(String clientId) {
        return profileRepository.findByClientId(clientId)
                .map(profile -> {
                    Map<Long, AvatarItem> byId = new LinkedHashMap<>();
                    itemRepository.findAllByOrderByOrdinalAsc().forEach(i -> byId.put(i.getId(), i));
                    return new AvatarLook(profile.getAvatarGender(), archetypeOf(profile),
                            equippedOf(profile.getId(), byId));
                })
                .orElseGet(() -> new AvatarLook(null, null, Map.of()));
    }

    /**
     * Jihozni kiyish yoki yechish. Mijozga ishonilmaydi: jihoz ochiqligi va slot
     * mosligi serverda tekshiriladi.
     */
    @Transactional
    public AvatarState equip(String clientId, String slot, String itemCode) {
        LearnerProfile profile = requireProfile(clientId);
        AvatarItem.Slot parsedSlot;
        try {
            parsedSlot = AvatarItem.Slot.valueOf(slot);
        } catch (IllegalArgumentException e) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Noma'lum slot");
        }

        if (itemCode == null) {
            equipmentRepository.deleteByProfileIdAndSlot(profile.getId(), parsedSlot.name());
            return stateOf(clientId);
        }

        AvatarItem item = itemRepository.findByCode(itemCode)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.BAD_REQUEST, "Jihoz topilmadi"));
        if (!item.getSlot().equals(parsedSlot.name())) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Jihoz bu slotga mos emas");
        }
        if (!AvatarUnlockService.isUnlocked(item, unlockService.statsOf(profile))) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Bu jihoz hali ochilmagan");
        }

        equipmentRepository.save(new AvatarEquipment(profile.getId(), parsedSlot.name(), item.getId()));
        return stateOf(clientId);
    }

    /**
     * Jinsni almashtirish. Tip jinsga bog'liq bo'lgani uchun mos kelmay qolsa,
     * u yangi jinsning oddiy tipiga o'tadi — jihozlar joyida qoladi.
     */
    @Transactional
    public AvatarState setGender(String clientId, String gender) {
        if (!"MALE".equals(gender) && !"FEMALE".equals(gender)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Noma'lum jins");
        }
        LearnerProfile profile = requireProfile(clientId);
        profile.setAvatarGender(gender);
        if (!archetypes.matchesGender(profile.getAvatarArchetype(), gender)) {
            profile.setAvatarArchetype(archetypes.defaultFor(gender));
        }
        profileRepository.save(profile);
        return stateOf(clientId);
    }

    /** Tipni almashtirish — bepul va istalgan paytda. Jins tipga qarab moslanadi. */
    @Transactional
    public AvatarState setArchetype(String clientId, String archetype) {
        if (!archetypes.isValid(archetype)) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Noma'lum tip");
        }
        LearnerProfile profile = requireProfile(clientId);
        profile.setAvatarArchetype(archetype);
        archetypes.all().stream()
                .filter(a -> a.getCode().equals(archetype))
                .findFirst()
                .ifPresent(a -> profile.setAvatarGender(a.getGender()));
        profileRepository.save(profile);
        return stateOf(clientId);
    }

    /** Ro'yxatdan o'tganda chaqiriladi: jins, tip va boshlang'ich jihoz. */
    @Transactional
    public void initialise(LearnerProfile profile, String gender, String archetype) {
        String resolvedGender = "FEMALE".equals(gender) ? "FEMALE" : "MALE";
        String resolvedArchetype = archetypes.matchesGender(archetype, resolvedGender)
                ? archetype
                : archetypes.defaultFor(resolvedGender);
        profile.setAvatarGender(resolvedGender);
        profile.setAvatarArchetype(resolvedArchetype);
        profileRepository.save(profile);
        for (String code : STARTER_ITEMS) {
            itemRepository.findByCode(code).ifPresent(item ->
                    equipmentRepository.save(new AvatarEquipment(profile.getId(), item.getSlot(), item.getId())));
        }
    }

    /** Eski profillar tipsiz bo'lishi mumkin — javobda hech qachon bo'sh qaytmasin. */
    public String archetypeOf(LearnerProfile profile) {
        String code = profile.getAvatarArchetype();
        if (archetypes.matchesGender(code, profile.getAvatarGender())) {
            return code;
        }
        return profile.getAvatarGender() == null
                ? null
                : archetypes.defaultFor(profile.getAvatarGender());
    }

    /** Faoliyat suratini olish — {@link #newlyUnlocked} uchun «oldin/keyin». */
    @Transactional(readOnly = true)
    public QuestStats statsOf(LearnerProfile profile) {
        return unlockService.statsOf(profile);
    }

    /**
     * Bellashuvda ustunlik uchun: o'yinchi kiyib turgan NODIR (RARE) jihozlar
     * soni. Profil hali yo'q bo'lsa — jihoz ham yo'q, natija 0.
     */
    @Transactional(readOnly = true)
    public int rareEquippedCount(String clientId) {
        return profileRepository.findByClientId(clientId)
                .map(this::rareEquippedCount)
                .orElse(0);
    }

    private int rareEquippedCount(LearnerProfile profile) {
        Map<Long, AvatarItem> byId = new LinkedHashMap<>();
        itemRepository.findAllByOrderByOrdinalAsc().forEach(i -> byId.put(i.getId(), i));
        int count = 0;
        for (AvatarEquipment e : equipmentRepository.findByProfileId(profile.getId())) {
            AvatarItem item = byId.get(e.getItemId());
            if (item != null && AvatarItem.Rarity.RARE.name().equals(item.getRarity())) {
                count++;
            }
        }
        return count;
    }

    /**
     * Aynan shu sinov tufayli ochilgan jihozlar (natijalar sahifasidagi bayram
     * uchun). Ikkala surat solishtiriladi, shuning uchun XP dan tashqari kvest
     * shartlari ham ushlanadi: «Mis sovut ochildi» — 8 ball to'plangani uchun.
     */
    @Transactional(readOnly = true)
    public List<UnlockedItem> newlyUnlocked(QuestStats before, QuestStats after) {
        List<UnlockedItem> result = new ArrayList<>();
        for (AvatarItem item : itemRepository.findAllByOrderByOrdinalAsc()) {
            if (!AvatarUnlockService.isUnlocked(item, before)
                    && AvatarUnlockService.isUnlocked(item, after)) {
                result.add(new UnlockedItem(item.getCode(), item.getNameUz(), item.getSlot()));
            }
        }
        return result;
    }

    private LearnerProfile requireProfile(String clientId) {
        return profileRepository.findByClientId(clientId)
                .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "Profil topilmadi"));
    }
}
