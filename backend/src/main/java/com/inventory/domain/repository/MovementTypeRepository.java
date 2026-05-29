package com.inventory.domain.repository;

import com.inventory.domain.entities.MovementEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MovementTypeRepository extends JpaRepository<MovementEntity, Integer> {
}
