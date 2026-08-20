package uz.tiriktarix.admin;

import static uz.tiriktarix.admin.AdminSupport.notFound;
import static uz.tiriktarix.admin.AdminSupport.oneOf;
import static uz.tiriktarix.admin.AdminSupport.optional;
import static uz.tiriktarix.admin.AdminSupport.required;

import java.util.List;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import uz.tiriktarix.auth.AuthPrincipal;
import uz.tiriktarix.map.MapFeature;
import uz.tiriktarix.map.MapFeatureRepository;

/**
 * Zamon xaritasi qatlamlari.
 *
 * <p>Geometriya bitta SVG mo'ljalida saqlanadi (viewBox 0 0 1000 700):
 * TERRITORY va ROUTE uchun — SVG path {@code d}, CITY uchun — {@code "x,y"}.
 * Chegaralar sxematik, shuning uchun {@code verified} bayrog'i alohida ma'noga
 * ega va interfeysda «metodist tasdig'ini kutmoqda» deb ko'rsatiladi.
 */
@RestController
@RequestMapping("/api/admin/map-features")
public class AdminMapController {

    private static final String ENTITY = "MAP";

    public record FeatureDto(Long id, Long eraId, String kind, String nameUz, String geometry,
                             String descriptionUz, String source, boolean verified,
                             Integer minYear, Integer maxYear, Integer ordinal,
                             String nameRu, String descriptionRu) {

        static FeatureDto from(MapFeature f) {
            return new FeatureDto(f.getId(), f.getEraId(), f.getKind(), f.getNameUz(), f.getGeometry(),
                    f.getDescriptionUz(), f.getSource(), f.isVerified(), f.getMinYear(),
                    f.getMaxYear(), f.getOrdinal(),
                    f.getNameRu(), f.getDescriptionRu());
        }
    }

    public record FeatureRequest(Long eraId, String kind, String nameUz, String geometry,
                                 String descriptionUz, String source, Boolean verified,
                                 Integer minYear, Integer maxYear, Integer ordinal,
                                 String nameRu, String descriptionRu) {
    }

    private final MapFeatureRepository repository;
    private final AdminAuditService audit;

    public AdminMapController(MapFeatureRepository repository, AdminAuditService audit) {
        this.repository = repository;
        this.audit = audit;
    }

    @GetMapping
    public List<FeatureDto> list() {
        return repository.findAllByOrderByOrdinalAscIdAsc().stream().map(FeatureDto::from).toList();
    }

    @PostMapping
    @Transactional
    public FeatureDto create(@AuthenticationPrincipal AuthPrincipal principal,
                             @RequestBody FeatureRequest request) {
        MapFeature feature = new MapFeature();
        apply(feature, request);
        MapFeature saved = repository.save(feature);
        audit.log(principal, AdminAuditService.CREATE, ENTITY, saved.getId(),
                "Слой карты добавлен: " + saved.getNameUz());
        return FeatureDto.from(saved);
    }

    @PutMapping("/{id}")
    @Transactional
    public FeatureDto update(@AuthenticationPrincipal AuthPrincipal principal,
                             @PathVariable Long id, @RequestBody FeatureRequest request) {
        MapFeature feature = repository.findById(id).orElseThrow(() -> notFound("Слой не найден"));
        boolean wasVerified = feature.isVerified();
        apply(feature, request);
        MapFeature saved = repository.save(feature);
        boolean verificationChanged = wasVerified != saved.isVerified();
        audit.log(principal, verificationChanged ? AdminAuditService.VERIFY : AdminAuditService.UPDATE,
                ENTITY, id, verificationChanged
                        ? (saved.isVerified() ? "Слой подтверждён: " : "Подтверждение снято: ") + saved.getNameUz()
                        : "Слой изменён: " + saved.getNameUz());
        return FeatureDto.from(saved);
    }

    @DeleteMapping("/{id}")
    @Transactional
    public void delete(@AuthenticationPrincipal AuthPrincipal principal, @PathVariable Long id) {
        MapFeature feature = repository.findById(id).orElseThrow(() -> notFound("Слой не найден"));
        repository.delete(feature);
        audit.log(principal, AdminAuditService.DELETE, ENTITY, id,
                "Слой удалён: " + feature.getNameUz());
    }

    private void apply(MapFeature feature, FeatureRequest request) {
        // eraId bo'sh bo'lsa qatlam barcha davrlarda ko'rinadi (shaharlar shunday)
        feature.setEraId(request.eraId());
        feature.setKind(oneOf(request.kind(), "Тип", "TERRITORY", "CITY", "ROUTE"));
        feature.setNameUz(required(request.nameUz(), "Название"));
        feature.setGeometry(required(request.geometry(), "Геометрия"));
        feature.setDescriptionUz(optional(request.descriptionUz()));
        feature.setSource(required(request.source(), "Источник"));
        feature.setVerified(Boolean.TRUE.equals(request.verified()));
        feature.setMinYear(request.minYear());
        feature.setMaxYear(request.maxYear());
        feature.setOrdinal(request.ordinal() == null ? 0 : request.ordinal());
        // Ruscha matn ixtiyoriy: bo'sh bo'lsa interfeys o'zbekcha aslini beradi.
        feature.setNameRu(optional(request.nameRu()));
        feature.setDescriptionRu(optional(request.descriptionRu()));
    }
}
