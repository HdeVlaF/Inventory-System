package com.inventory.domain.repository;

import com.inventory.domain.entities.AssetStatusEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AssetStatusRepository extends JpaRepository<AssetStatusEntity, Integer> {
}
