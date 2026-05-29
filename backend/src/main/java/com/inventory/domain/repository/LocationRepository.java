package com.inventory.domain.repository;

import com.inventory.domain.entities.LocationEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LocationRepository  extends JpaRepository<LocationEntity, Integer> {
}
