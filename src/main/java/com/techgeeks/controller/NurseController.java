package com.techgeeks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techgeeks.dao.NurseService;
import com.techgeeks.model.Nurse;
import com.techgeeks.repository.NurseRepository;

@Controller
public class NurseController {
	
	
	@Autowired
	NurseService nurseService;
	
	@Autowired
	NurseRepository nurseRepository;
	
	
	@RequestMapping("/nurse")
	public String nurse(ModelMap modelmap) {
		List<Nurse> nurseList = nurseService.findAllNurse();
		//System.out.println(departmentList);
		modelmap.put("nurseList", nurseList);
		return "nurse";
	}
	
	@RequestMapping("/addNurse")
	public String addNurse(ModelMap model) {
		Nurse nurse = new Nurse();
		model.put("nurse", nurse);
		return "addNurse";
	}

	@RequestMapping(value = "/addNurse", method = RequestMethod.POST)
	public String addNurse(@ModelAttribute("nurse") Nurse nurse) {
		nurseService.addNurse(nurse);
		return "redirect:/nurse";
	}
	
	
	@RequestMapping("/editNurse/{nurseId}")
	public String updateNurse(@PathVariable(value = "nurseId") int nurseId, ModelMap modelMap) {
		Nurse editedNurse = nurseService.editNurse(nurseId);
		modelMap.addAttribute("editedNurse", editedNurse);
		return "editNurse";
	}
	
	
	@RequestMapping("/deleteNurse/{nurseId}")
	public String deleteNurse(@PathVariable(value = "nurseId") int nurseId) {
		nurseRepository.deleteById(nurseId);
		return "redirect:/nurse";
		
	}

}
