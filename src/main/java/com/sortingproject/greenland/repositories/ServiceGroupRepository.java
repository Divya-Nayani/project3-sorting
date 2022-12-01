package com.sortingproject.greenland.repositories;

import com.sortingproject.greenland.entity.model.ServiceGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ServiceGroupRepository extends JpaRepository<ServiceGroup, Long> {}
