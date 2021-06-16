package com.techgeeks.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.techgeeks.model.Feedback;
import com.techgeeks.model.Patient;
import com.techgeeks.model.User;
import com.techgeeks.repository.FeedBackRepository;
import com.techgeeks.repository.PatientRepository;
import com.techgeeks.repository.UserRepository;

@Component
public class PatientService implements PatientDao {

	@Autowired
	PatientRepository patientRepository;
	
	@Autowired
	FeedBackRepository feedbackRepository;
	
	@Autowired
	UserRepository userRepository;

	@Override
	public void addPatient(Patient patient) {
		// TODO Auto-generated method stub
		
		patientRepository.save(patient);
		User user = new User();
		user.setEmail(patient.getEmail());
		user.setPassword("1234");
		user.setRole("patient");
		userRepository.save(user);

	}
	
	
	@Override
	public void updatePatient(Patient patient) {
		patientRepository.save(patient);
		
	}

	@Override
	public List<Patient> getAll() {
		// TODO Auto-generated method stub
		List<Patient> patientList = patientRepository.findAll();
		return patientList;
	}

	@Override
	public Patient getById(int id, String pass) {
		// TODO Auto-generated method stub
		Patient uniquePatient = patientRepository.getOne(id);
		return uniquePatient;
	}
	
	@Override
	public Patient editPatient(int id) {
		// TODO Auto-generated method stub
		Patient patient = patientRepository.findById(id).get();
		System.out.println(patient);
		return patient;
	}

	@Override
	public void addFeedback(Feedback feedback) {
		// TODO Auto-generated method stub
		feedbackRepository.save(feedback);
		
	}

	@Override
	public Patient getByEmail(String email) {
		// TODO Auto-generated method stub
		Patient pat = patientRepository.findByEmail("email");
		
		return pat;
	}

	


}
