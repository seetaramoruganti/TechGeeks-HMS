package com.techgeeks.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Doctor;


@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Integer> {

	public Doctor findByDocEmail(String email);
	
	public List<Doctor> findByStatus(boolean status);

}
