package com.techgeeks.hms;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import com.techgeeks.dao.DoctorService;
import com.techgeeks.model.Patient;
import com.techgeeks.repository.AppointmentRepository;
import com.techgeeks.repository.DoctorRepository;
import com.techgeeks.repository.PatientRepository;
import com.techgeeks.repository.UserRepository;

@DataJpaTest
public class TestLogin {

	@Autowired
	private UserRepository repo;

	@Autowired
	private PatientRepository patrepo;

	@Autowired
	private DoctorRepository docrepo;

	@Autowired
	private AppointmentRepository apprepo;

	@Autowired
	private DoctorService doctorService;

	@Test
	
	public void testRegistration() throws ParseException {
//		Patient patient = new Patient(21,"Vicky","vicky@gmail.com","vicky2206","chennai","1234567890","Male","2021-06-06",25,"B+ve","patient");
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

		Date date = simpleDateFormat.parse("2018-09-09");

		Patient patient = new Patient(21, "vicky", "v@gmail.com", "v2016", "jharkhand", "5864894262", "male", date, 24,
				"A+ve", "patient");

		Patient savepat = patrepo.save(patient);
		assertNotNull(savepat);
	}

	@Test
	public void testUpdateUserName() throws ParseException  {
		String pattern = "yyyy-MM-dd";
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);

		Date date = simpleDateFormat.parse("2018-09-09");
		String pEmail = "joseph@gmail.com";
		Patient patient = new Patient(21, "vicky", pEmail, "v2016", "jharkhand", "5864894262", "male", date, 24, "A+ve",
				"patient");
		patient.setId((int) 11);
		patrepo.save(patient);
		Patient updateUser = patrepo.findByEmail(pEmail);
		assertThat(updateUser.getEmail()).isEqualTo(pEmail);

	}

}
