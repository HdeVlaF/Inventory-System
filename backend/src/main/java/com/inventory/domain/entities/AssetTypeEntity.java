package com.inventory.domain.entities;

import jakarta.persistence.*;
import lombok.*;

import java.time.OffsetDateTime;

@Entity(name = "asset_type")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AssetTypeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "asset_type_id")
    private Integer assetTypeId;

    @Column(name = "name", length = 100, nullable = false, unique = true)
    private String name;

    @Column(name = "category", length = 100, nullable = false, unique = true)
    private String category;

    @Column(name = "description", length = 255, nullable = false)
    private String description;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createAt;
}
