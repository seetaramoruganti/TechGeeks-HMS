package com.techgeeks.hms;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import com.techgeeks.dao.DepartmentService;
import com.techgeeks.dao.DoctorService;
import com.techgeeks.dao.NurseService;
import com.techgeeks.model.Appointment;
import com.techgeeks.model.Department;
import com.techgeeks.model.Doctor;
import com.techgeeks.model.Feedback;
import com.techgeeks.model.Nurse;
import com.techgeeks.model.User;
import com.techgeeks.repository.AppointmentRepository;
import com.techgeeks.repository.DepartmentRepository;
import com.techgeeks.repository.DoctorRepository;
import com.techgeeks.repository.FeedBackRepository;
import com.techgeeks.repository.NurseRepository;
import com.techgeeks.repository.UserRepository;

@DataJpaTest
public class TestAddFatures {

	
	@Autowired
	NurseRepository nurseRepository;

	@Autowired
	NurseService nurseService;
	
	@Autowired
	DoctorRepository doctorRepository;

	@Autowired
	DoctorService doctorService;
	
	@Autowired
	FeedBackRepository feedBackRepository;
	
	@Autowired
	DepartmentRepository departmentRepository;
	
	@Autowired
	DepartmentService departmentService;
	
	@Autowired
	private UserRepository repo;
	
	@Autowired
	AppointmentRepository appointmentRepository;
	
	
	@Test
	  public void testlogincredentials() {
		  User user = new User(25,"vgg@gmail.com","v2016","patient");
		  User saveUser = repo.save(user); 
		  assertNotNull(saveUser); 
	  }
	
	
	@Test
	public void testAddNurse() {
		Nurse nurse = new Nurse("Nurse2","nurse2@gmail.com","1234","nurse Adress","6846848948");
		Nurse saveNurse = nurseRepository.save(nurse);
		assertNotNull(saveNurse);
	}
	
	
	@Test
	public void testAddDoctor() {
		Doctor doctor = new Doctor(5, "Doctor3", "doctor3@gmail.com", "1234", "doc Address", "6846848948", "gyanology",
				true);
		Doctor saveDoc = doctorRepository.save(doctor);
		assertNotNull(saveDoc);
	}
	
	@Test
	public void testAddFeedback() {
		Feedback feedback = new Feedback("Feedback2","feedback2@gmail.com","6846848948", "suggestion");
		Feedback saveFeed = feedBackRepository.save(feedback);
		assertNotNull(saveFeed);
	}
	
	@Test
	public void testAddAppointment() {
		Appointment appt = new Appointment("vicky","vicky@gmail.com","264646844",26,"heart",3,5,"stomach pain");
		Appointment saveApt = appointmentRepository.save(appt);
		assertNotNull(saveApt);
	}
	
	@Test
	public void testAddDepartment() {
		Department department = new Department("Pharmacy Department","storing and dispensing all drugs");
		Department saveDep = departmentRepository.save(department);
		assertNotNull(saveDep);
	}
}
