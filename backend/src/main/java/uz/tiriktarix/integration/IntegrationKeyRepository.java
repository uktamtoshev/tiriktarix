package uz.tiriktarix.integration;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IntegrationKeyRepository extends JpaRepository<IntegrationKey, Long> {

    Optional<IntegrationKey> findByCode(String code);

    List<IntegrationKey> findAllByOrderByKindAscCodeAsc();

    List<IntegrationKey> findByKindAndActiveTrue(String kind);
}
