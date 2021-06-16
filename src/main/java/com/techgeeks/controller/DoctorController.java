package com.techgeeks.controller;

import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.techgeeks.dao.DoctorService;
import com.techgeeks.model.Appointment;
import com.techgeeks.model.Doctor;
import com.techgeeks.model.Patient;
import com.techgeeks.model.Prescription;
import com.techgeeks.model.User;
import com.techgeeks.repository.AppointmentRepository;
import com.techgeeks.repository.DoctorRepository;
import com.techgeeks.repository.PatientRepository;
import com.techgeeks.repository.PrescriptionRepository;
import com.techgeeks.repository.UserRepository;

@Controller
public class DoctorController {

	@Autowired
	DoctorRepository doctorRepository;

	@Autowired
	DoctorService doctorService;

	@Autowired
	AppointmentRepository appointmentRepository;

	@Autowired
	UserRepository userRepository;

	@Autowired
	PatientRepository patrepo;

	@Autowired
	PrescriptionRepository presrepo;

	@RequestMapping("/doctor")
	public String doctor(ModelMap modelmap) {
		List<Doctor> doctorList = doctorService.getAllDoctor();
		// System.out.println(departmentList);
		modelmap.put("doctorList", doctorList);
		return "doctor";
	}

	@RequestMapping("/addDoctor")
	public String addDoct(ModelMap model) {
		Doctor doctor = new Doctor();
		model.put("doctor", doctor);
		return "addDoctor";
	}

	@RequestMapping(value = "/addDoctor", method = RequestMethod.POST)
	public String addDept(@ModelAttribute("doctor") Doctor doctor) {
		doctorService.addDoctor(doctor);

		return "redirect:/doctor";
	}

	@RequestMapping("/editDoct/{docId}")
	public String updateDoct(@PathVariable(value = "docId") int docId, ModelMap modelMap) {
		Doctor editedDoct = doctorService.editdoct(docId);
		modelMap.addAttribute("editedDoct", editedDoct);
		return "editDoct";
	}

	@RequestMapping("/deleteDoct/{docId}")
	public String deleteDoct(@PathVariable(value = "docId") int docId) {
		doctorRepository.deleteById(docId);
		return "redirect:/doctor";

	}

	@RequestMapping("AppointmentsListWtDoc/{dId}")
	public String AppointmentsListWtDoc(@PathVariable(value = "dId") int dId, ModelMap map) {
		List<Appointment> docapps = appointmentRepository.findByDocid(dId);
		map.put("docapps", docapps);
		return "AppointmentsListWtDoc";

	}

	@RequestMapping("/updateDoctorProfile/{dId}")
	public String updateDoctPro(@PathVariable(value = "dId") int dId, ModelMap modelMap) {
		Doctor doc = doctorService.editdoct(dId);
		modelMap.addAttribute("doc", doc);
		return "updateDoctorProfile";
	}

	@RequestMapping(value = "/updateDoctor", method = RequestMethod.POST)
	public String updateDoctor(@ModelAttribute("doc") Doctor doc, ModelMap model) {
		doctorRepository.save(doc);
		User user = userRepository.findByEmail(doc.getDocEmail());
		user.setPassword(doc.getDocPass());
		userRepository.save(user);
		model.addAttribute("dId", doc.getDocId());
		model.addAttribute("dEmail", doc.getDocEmail());
		return "doctorHome";
	}

	@RequestMapping(value = "/retrieve_patient", method = RequestMethod.POST)
	public String retrievePatient(@RequestParam("email") String email, ModelMap modelMap) {
		Patient pat = patrepo.findByEmail(email);
		if (Objects.isNull(pat)) {
			modelMap.addAttribute("msg", "Patient not Found");
			return "search_patient";
		}

		modelMap.addAttribute("pat", pat);
		return "retrieve_patient";

	}

	@RequestMapping("/search")
	public String searchPat() {
		return "search_patient";
	}

	@RequestMapping("/prescribe/{apid}")
	public String presMed(@PathVariable(value = "apid") int apid, ModelMap map) {
		Prescription pres = new Prescription();
		Appointment app = appointmentRepository.getOne(apid);
		map.put("pres", pres);
		map.put("name", app.getName());
		map.put("dId", app.getDocid());
		map.put("pid", app.getPatid());
		map.put("aid", app.getApid());
		return "prescription";
	}

	@RequestMapping(value = "/savepres", method = RequestMethod.POST)
	public String savePres(@ModelAttribute("pres") Prescription pres) {
		presrepo.save(pres);
		return "prescription";
	}

	@RequestMapping("/viewAppointmentwtDoc/{dId}")
	public String viewApp(@PathVariable(value = "dId") int dId, ModelMap map) {

		map.put("applist", appointmentRepository.findByDocid(dId));

		return "viewAppointment";
	}

	@RequestMapping("/presHist/{apid}")
	public String presHist(@PathVariable(value = "apid") int apid, ModelMap map) {
		List<Prescription> presHist = presrepo.findByAid(apid);
		if (presHist.isEmpty()) {
			map.addAttribute("msg"," You Haven't Prescribed ..!");
			return "preshist";
		}
		map.put("presHist", presHist);
		return "preshist";
	}

}
