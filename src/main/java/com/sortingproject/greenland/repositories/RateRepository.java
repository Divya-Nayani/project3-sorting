package com.sortingproject.greenland.repositories;

import com.sortingproject.greenland.entity.model.Rate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RateRepository extends JpaRepository<Rate, Long> {}
