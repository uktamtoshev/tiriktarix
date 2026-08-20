package uz.tiriktarix.region;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

/** Tuman — viloyat ichidagi tanlov (V106). */
@Entity
@Table(name = "districts")
public class District {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long regionId;

    private String nameUz;

    private Integer ordinal;

    public Long getId() {
        return id;
    }

    public Long getRegionId() {
        return regionId;
    }

    public String getNameUz() {
        return nameUz;
    }

    public Integer getOrdinal() {
        return ordinal;
    }
}
