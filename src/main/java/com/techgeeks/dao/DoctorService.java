package com.techgeeks.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.techgeeks.model.Doctor;
import com.techgeeks.model.User;
import com.techgeeks.repository.DoctorRepository;
import com.techgeeks.repository.UserRepository;

@Component
public class DoctorService implements DoctorDao{
	
	@Autowired
	DoctorRepository doctorRepository;

	@Autowired
	UserRepository userRepository;

	
	@Override
	public List<Doctor> getAllDoctor() {
		// TODO Auto-generated method stub
		
		List<Doctor> doctorList = doctorRepository.findAll();
		return doctorList;
	}

	@Override
	public void addDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		
		doctorRepository.save(doctor);
		User user = new User();
		user.setEmail(doctor.getDocEmail());
		user.setPassword("1234");
		user.setRole("doctor");
		userRepository.save(user);

	}

	
	@Override
	public Doctor editdoct(int docId) {
		// TODO Auto-generated method stub
		
		Doctor doctor = doctorRepository.findById(docId).get();
		return doctor;

	}

	@Override
	public Doctor getdoct(int docId) {
		// TODO Auto-generated method stub
		
		return doctorRepository.getOne(docId);
	}

}
