package com.inventory.domain.entities;

import jakarta.persistence.*;
import lombok.*;
import java.time.LocalDate;
import java.time.OffsetDateTime;

@Entity(name = "asset")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AssetEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "asset_id")
    private Integer assetId;

    @Column(name = "serial_number", length = 100, nullable = false)
    private String serialNumber;

    @Column(name = "internal_code", length = 100, nullable = false, unique = true)
    private String internalCode;

    @Column(name = "brand", length = 100, nullable = false)
    private String brand;

    @Column(name = "model", length = 100, nullable = false)
    private String model;

    @Column(name = "hostname", length = 100)
    private String hostname;

    @Column(name = "pos_number", length = 50)
    private String posNumber;

    @Column(name = "teamviewer_id", length = 50)
    private String teamviewerId;

    @Column(name = "purchase_date")
    private LocalDate purchaseDate;

    @Column(name = "received_at")
    private OffsetDateTime receivedAt;

    @Column(name = "warranty_end_date")
    private LocalDate warrantyEndDate;

    @Column(name = "notes", columnDefinition = "TEXT")
    private String notes;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "asset_type_id", nullable = false)
    private AssetTypeEntity assetType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "asset_status_id", nullable = false)
    private AssetStatusEntity assetStatus;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "current_location_id", nullable = false)
    private LocationEntity currentLocation;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private OffsetDateTime updatedAt;

    @PrePersist
    protected void onCreate() {
        this.createdAt = OffsetDateTime.now();
        this.updatedAt = OffsetDateTime.now();
    }

    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = OffsetDateTime.now();
    }
}