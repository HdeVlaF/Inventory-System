package com.inventory.domain.repository;

import com.inventory.domain.entities.AssetEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AssetRepository extends JpaRepository<AssetEntity, Integer> {
}
