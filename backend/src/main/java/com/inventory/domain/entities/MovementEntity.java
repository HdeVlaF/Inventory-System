package com.inventory.domain.entities;

import jakarta.persistence.*;
import lombok.*;
import java.time.OffsetDateTime;

@Entity(name = "movement")
@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class MovementEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movement_id")
    private Integer movementId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "asset_id", nullable = false)
    private AssetEntity asset;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movement_type_id", nullable = false)
    private MovementTypeEntity movementType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "source_location_id")
    private LocationEntity sourceLocation;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "destination_location_id", nullable = false)
    private LocationEntity destinationLocation;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "source_status_id")
    private AssetStatusEntity sourceStatus;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "destination_status_id", nullable = false)
    private AssetStatusEntity destinationStatus;

    @Column(name = "movement_date", nullable = false)
    private OffsetDateTime movementDate;

    @Column(name = "notes", columnDefinition = "TEXT")
    private String notes;

    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @PrePersist
    protected void onCreate() {
        this.createdAt = OffsetDateTime.now();
        if (this.movementDate == null) {
            this.movementDate = OffsetDateTime.now();
        }
    }
}