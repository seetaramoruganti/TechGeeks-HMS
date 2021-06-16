package com.techgeeks.dao;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.techgeeks.model.Appointment;
import com.techgeeks.repository.AppointmentRepository;

@Component
public class AppointmentService implements AppointmentDao {

	@Autowired
	AppointmentRepository appointmentRepository;
//	
//	@Override
//	public void save(Appointment app) {
//		// TODO Auto-generated method stub
//		appointmentRepository.save(app);
//		
//	}
	@Override
	public void addApp(Appointment appointment) {
		// TODO Auto-generated method stub
		
		appointmentRepository.save(appointment);
	}
	

}
