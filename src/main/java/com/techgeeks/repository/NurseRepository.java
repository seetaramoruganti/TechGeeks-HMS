package com.techgeeks.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Nurse;

@Repository
public interface NurseRepository extends JpaRepository<Nurse, Integer> {

}
