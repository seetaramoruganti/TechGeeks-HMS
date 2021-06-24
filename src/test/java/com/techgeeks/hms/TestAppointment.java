package com.techgeeks.hms;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.techgeeks.dao.AppointmentService;
import com.techgeeks.dao.NurseService;
import com.techgeeks.model.Appointment;
import com.techgeeks.model.Nurse;
import com.techgeeks.repository.AppointmentRepository;

@SpringBootTest
public class TestAppointment {
	
	@Autowired
	AppointmentRepository appointmentRepository;
	
	@Autowired
	AppointmentService appointmentService;
	
	@Before(value = "")
	public void setUp() {
		appointmentService = new AppointmentService();
	}

	@Test
	public void testAppointmentService() {
		assertTrue(appointmentService instanceof AppointmentService);
	}
	
	
	@Test
	  public void testAppointmentList()
	  {
		  List<Appointment> appointment = (List<Appointment>)appointmentRepository.findAll();
		  for(Appointment app : appointment) {
			  System.out.println(app);
		  }
		  assertThat(appointment).size().isGreaterThan(0);
	  }
	
	@After(value = "")
	public void setDown() {
		appointmentService = null;
	}
	
}
