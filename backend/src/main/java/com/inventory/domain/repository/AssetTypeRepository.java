package com.inventory.domain.repository;

import com.inventory.domain.entities.AssetTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AssetTypeRepository extends JpaRepository<AssetTypeEntity, Integer> {
}
