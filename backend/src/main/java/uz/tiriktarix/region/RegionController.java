package uz.tiriktarix.region;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Viloyat va tumanlar ro'yxati — ro'yxatdan o'tish shakli uchun (V106).
 *
 * <p>Ochiq endpoint: ro'yxatdan o'tayotgan bolada hali token yo'q, shuning
 * uchun bu ma'lumot autentifikatsiyasiz berilishi kerak. Ichida shaxsiy
 * ma'lumot yo'q — faqat ma'muriy bo'linish nomlari.
 *
 * <p>Bitta so'rovda hammasi qaytadi: ro'yxat kichik (14 viloyat, ~190 tuman),
 * va shakl viloyat tanlanganda darhol tumanlarni ko'rsatishi kerak — ikkinchi
 * so'rovni kutib turish bolaga sabab bo'lgan kechikish beradi.
 */
@RestController
@RequestMapping("/api/regions")
public class RegionController {

    public record RegionDto(String nameUz, List<String> districtsUz) {
    }

    private final RegionRepository regions;
    private final DistrictRepository districts;

    public RegionController(RegionRepository regions, DistrictRepository districts) {
        this.regions = regions;
        this.districts = districts;
    }

    @GetMapping
    public List<RegionDto> list() {
        Map<Long, List<String>> byRegion = new LinkedHashMap<>();
        for (District d : districts.findAllByOrderByRegionIdAscOrdinalAsc()) {
            byRegion.computeIfAbsent(d.getRegionId(), k -> new ArrayList<>()).add(d.getNameUz());
        }
        return regions.findAllByOrderByOrdinalAsc().stream()
                .map(r -> new RegionDto(r.getNameUz(), byRegion.getOrDefault(r.getId(), List.of())))
                .toList();
    }
}
