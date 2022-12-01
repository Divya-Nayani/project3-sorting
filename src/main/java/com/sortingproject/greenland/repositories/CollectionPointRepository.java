package com.sortingproject.greenland.repositories;

import com.sortingproject.greenland.entity.model.CollectionPoint;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CollectionPointRepository extends JpaRepository<CollectionPoint, Long> {}
