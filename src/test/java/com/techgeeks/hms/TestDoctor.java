package com.techgeeks.hms;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.techgeeks.dao.DoctorService;
import com.techgeeks.dao.NurseService;
import com.techgeeks.model.Doctor;
import com.techgeeks.model.Nurse;
import com.techgeeks.repository.DoctorRepository;

@SpringBootTest
public class TestDoctor {

	@Autowired
	DoctorRepository doctorRepository;

	@Autowired
	DoctorService doctorService;

	@Before(value = "")
	public void setUp() {
		doctorService = new DoctorService();
	}

	@Test
	public void testDoctorService() {
		assertTrue(doctorService instanceof DoctorService);
	}

	@Test
	public void testFindByEmailExist() {
		String email = "doctor@gmail.com";
		Doctor doctor = doctorRepository.findByDocEmail(email);
		assertThat(doctor.getDocEmail()).isEqualTo(email);
	}

	

	@Test
	public void testDoctorList() {
		List<Doctor> doctor = (List<Doctor>) doctorRepository.findAll();
		for (Doctor doc : doctor) {
			System.out.println(doc);
		}
		assertThat(doctor).size().isGreaterThan(0);
	}

//	@Test
//	public void testDeleteDoctor() {
//		Doctor doctor = new Doctor(6, "ajith", "ajith@gmail.com", "ajith123", "srilanka", "5686268498", "mechanical",
//				true);
//		doctorRepository.save(doctor);
//		doctorRepository.deleteById(doctor.getDocId());
//	}

	@After(value = "")
	public void setDown() {
		doctorService = null;
	}

}
