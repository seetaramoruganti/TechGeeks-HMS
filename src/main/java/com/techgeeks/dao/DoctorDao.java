package com.techgeeks.dao;

import java.util.List;

import com.techgeeks.model.Doctor;

public interface DoctorDao {
	
	public List<Doctor> getAllDoctor();
	public void addDoctor(Doctor doctor);
	public Doctor editdoct(int docId);
	public Doctor getdoct(int docId);
	

}
