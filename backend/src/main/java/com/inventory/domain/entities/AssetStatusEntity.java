package com.inventory.domain.entities;

import jakarta.persistence.*;
import lombok.*;

@Entity(name = "asset_status")
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class AssetStatusEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "asset_status_id")
    private Integer assetStatusId;

    @Column(name = "name", length = 100, nullable = false, unique = true)
    private String name;

    @Column(name = "description", length = 100, nullable = false, unique = true)
    private String description;
}
