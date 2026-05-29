package com.inventory.domain.repository;

import com.inventory.domain.entities.LocationTypeEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationTypeRepository extends JpaRepository<LocationTypeEntity, Integer> {
}
