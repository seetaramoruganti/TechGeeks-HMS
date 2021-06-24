package com.techgeeks.controller;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.Optional;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
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
	
	@Autowired
	private JavaMailSender mailSenderObj;

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
	public String addDept(@ModelAttribute("doctor") Doctor doctor) throws IOException  {
		doctorService.addDoctor(doctor);
		sendmail(doctor);
		return "redirect:/doctor";
	}
	
	
		
	private void sendmail(Doctor doctor) {
		final String emailToRecipient = doctor.getDocEmail();
		final String emailSubject = "successfully registered";
		final String emailMessage1 = "<html> <body> <p>Dear Sir/Madam,</p><p>You have succesfully Registered with our Services"
				 + "<br><br>"
				+ "<table border='1' width='300px' style='text-align:center;font-size:20px;'><tr> <td colspan='2'>"
				+  "</td></tr><tr><td>Name</td><td>" + doctor.getDocName()
				+ "</td></tr><tr><td>Email Id</td><td>" + doctor.getDocEmail()
				+ "</td></tr><tr><td>Password</td><td>" + doctor.getDocPass()
				+ "</td></tr></table> </body></html>";

		mailSenderObj.send(new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {

				MimeMessageHelper mimeMsgHelperObj = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				mimeMsgHelperObj.setFrom("hmstechgeeks@gmail.com");
				
				mimeMsgHelperObj.setTo(emailToRecipient);
				
				mimeMsgHelperObj.setText(emailMessage1, true);

				mimeMsgHelperObj.setSubject(emailSubject);
				
			
			}
		});

	}
	
	
	
	
	
	@RequestMapping(value = "/updateDoctorPrf", method = RequestMethod.POST)
	public String updateDoctorPrf(@ModelAttribute("doc") Doctor doc, ModelMap model) {
		doctorRepository.save(doc);
		User user = userRepository.findByEmail(doc.getDocEmail());
		user.setPassword(doc.getDocPass());
		userRepository.save(user);
//		model.addAttribute("dId", doc.getDocId());
//		model.addAttribute("dEmail", doc.getDocEmail());
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
		
		Doctor doctor = doctorRepository.findById(docId).get();
		User user = userRepository.findByEmail(doctor.getDocEmail());
		doctorRepository.deleteById(docId);
		userRepository.deleteById(user.getId());
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
			map.addAttribute("msg", " You Haven't Prescribed ..!");
			return "preshist";
		}
		map.put("presHist", presHist);
		return "preshist";
	}

	@RequestMapping("/viewPres/{apid}")
	public String viewPres(@PathVariable(value = "apid") int apid, ModelMap map) {
		List<Prescription> presHist = presrepo.findByAid(apid);
		if (presHist.isEmpty()) {
			map.addAttribute("msg", " Your medicine was not Prescribed..!");
			return "preshist";
		}
		map.put("presHist", presHist);
		return "preshist";
	}
	

//	@RequestMapping("/switchStatus")
//	public void updateStatus(@RequestParam("status") boolean status, HttpSession session) {
//		Doctor doc = (Doctor)session.getAttribute("doc");
//		doc.setStatus(status);
//		doctorRepository.save(doc);
//	}
	
}
