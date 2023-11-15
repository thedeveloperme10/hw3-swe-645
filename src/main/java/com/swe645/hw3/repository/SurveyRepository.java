package com.swe645.hw3.repository;

import com.swe645.hw3.models.Survey;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface SurveyRepository extends JpaRepository<Survey, Long> {
}
