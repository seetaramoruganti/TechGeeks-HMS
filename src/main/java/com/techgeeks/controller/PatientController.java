package com.techgeeks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techgeeks.dao.AppointmentService;
import com.techgeeks.dao.DoctorService;
import com.techgeeks.dao.PatientService;
import com.techgeeks.model.Appointment;
import com.techgeeks.model.Doctor;
import com.techgeeks.model.Patient;
import com.techgeeks.model.User;
import com.techgeeks.repository.AppointmentRepository;
import com.techgeeks.repository.DoctorRepository;
import com.techgeeks.repository.PatientRepository;
import com.techgeeks.repository.PrescriptionRepository;
import com.techgeeks.repository.UserRepository;

@Controller
public class PatientController {

	@Autowired
	PatientService patientService;

	@Autowired
	DoctorService doctorService;

	@Autowired
	AppointmentService appointmentService;
	
	@Autowired
	PatientRepository patientRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	AppointmentRepository appointmentRepository;
	
	@Autowired
	PrescriptionRepository presrepo;
	
	@Autowired 
	DoctorRepository docrepo;
	
	@RequestMapping("/updatePatientProfile/{id}")
	public String getUpdatePatientProfileForm(@PathVariable(value = "id") int id, ModelMap modelMap) {
		Patient patient = patientService.editPatient(id);
		modelMap.addAttribute("patient",patient);
		return "updatePatientProfile";
	}
	
	@RequestMapping(value = "/updatePatient", method = RequestMethod.POST)
	public String updatePatient(@ModelAttribute("patient") Patient patient) {
		patientService.updatePatient(patient);
		User user = userRepository.findByEmail(patient.getEmail());
		user.setPassword(patient.getPassword());
		userRepository.save(user);
		return "patientHome";
	}

	
	@RequestMapping("/patients")
	public String patient(ModelMap modelmap) {
		List<Patient> patientList = patientService.getAll();
		modelmap.put("patientList", patientList);
		return "patient";
	}

	@RequestMapping("/addPatient")
	public String addPatient(ModelMap model) {
		Patient patient = new Patient();
		model.put("patient", patient);
		return "addPatient";
	}

	@RequestMapping(value = "/addPatient", method = RequestMethod.POST)
	public String addPatient(@ModelAttribute("patient") Patient patient) {
		patientService.addPatient(patient);
		return "redirect:/patients";
	}

	@RequestMapping("/editPatient/{id}")
	public String updatePatient(@PathVariable(value = "id") int id, ModelMap modelMap) {
		Patient editedPatient = patientService.editPatient(id);
		modelMap.addAttribute("editedPatient", editedPatient);
		return "editPatient";
	}

	@RequestMapping("/deletePatient/{id}")
	public String deleteDoct(@PathVariable(value = "id") int id) {
		patientRepository.deleteById(id);
		return "redirect:/patients";

	}

	@RequestMapping("/patientDocsList")
	public String patientHome(ModelMap modelmap) {
//		List<Doctor> DocsList = doctorService.getAllDoctor();
		// System.out.println(departmentList);
		List<Doctor> DocsList= docrepo.findByStatus(true);
		modelmap.put("DocsList", DocsList);
		return "patientDocsList";
	}

	@RequestMapping("/bookAppointment/{docId}")
	public String bookAppointment(@PathVariable(value = "docId") int docId, ModelMap modelMap) {
		//modelMap.addAttribute("docId", docId);
		Doctor doc = doctorService.getdoct(docId);
		modelMap.addAttribute("doc", doc);
		Appointment appointment = new Appointment();
		modelMap.put("appointment", appointment);
		return "bookAppointment";
	}

	@RequestMapping(value = "/saveAppointment", method = RequestMethod.POST)
	public String saveAppointment(@ModelAttribute("appointment") Appointment appointment) {
		appointmentService.addApp(appointment);
//		appointmentService
		return "patientHome";
	}
	
	@RequestMapping("/viewAppointment/{pId}")
	public String viewAppointment(@PathVariable(value = "pId") int pId, ModelMap modelMap) {
		List<Appointment> appList = appointmentRepository.findByPatid(pId);
		modelMap.put("appList", appList);
		System.out.println(appList);
		return "appointmentHistory";
	}
	

}
