package com.techgeeks.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.techgeeks.model.Appointment;
import com.techgeeks.model.Doctor;


@Repository
public interface AppointmentRepository extends JpaRepository<Appointment, Integer> {

	public List<Appointment> findByDocid(int id);

	public List<Appointment> findByPatid(int pId);
}
