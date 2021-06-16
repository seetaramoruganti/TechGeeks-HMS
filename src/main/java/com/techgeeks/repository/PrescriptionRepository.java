package com.techgeeks.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Appointment;
import com.techgeeks.model.Doctor;
import com.techgeeks.model.Prescription;


@Repository
public interface PrescriptionRepository extends JpaRepository<Prescription, Integer> {

	public List<Prescription> findByPid(int pid);
	public List<Prescription> findByDid(int did);
	public List<Prescription> findByAid(int aid);

}
