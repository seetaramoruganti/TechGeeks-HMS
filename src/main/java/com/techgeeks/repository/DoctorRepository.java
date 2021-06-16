package com.techgeeks.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Doctor;


@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer> {

	public Doctor findByDocEmail(String email);

}
