package com.techgeeks.dao;

import java.util.List;

import com.techgeeks.model.Feedback;
import com.techgeeks.model.Patient;
import com.techgeeks.model.User;

public interface PatientDao {
	
	public void addPatient(Patient patient);
	public List<Patient> getAll();
	public Patient getById(int id,String pass);
	public void addFeedback(Feedback feedback );
	public Patient getByEmail(String email);
	public Patient editPatient(int id);
	public void updatePatient(Patient patient);
}
