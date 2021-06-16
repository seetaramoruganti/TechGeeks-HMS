package com.techgeeks.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techgeeks.dao.DepartmentService;
import com.techgeeks.model.Feedback;
import com.techgeeks.model.User;
import com.techgeeks.repository.FeedBackRepository;
import com.techgeeks.repository.UserRepository;

@Controller
public class AdminController {


	@Autowired
	DepartmentService departmentService;
	
	
	@Autowired
	FeedBackRepository feedBackRepository;
	
	
	@Autowired
	UserRepository userRepository;

	@RequestMapping("/adminHome")
	public String adminHome() {
		return "adminHome";
	}

	@RequestMapping("/viewFeedback")
	public String feedback(ModelMap modelmap) {
		List<Feedback> feedbackList = feedBackRepository.findAll();
		modelmap.put("feedbackList", feedbackList);
		return "showFeedback";
	}
	
	@RequestMapping("/deleteFeedback/{f_id}")
	public String deleteFeedback(@PathVariable(value = "f_id") int f_id) {
		feedBackRepository.deleteById(f_id);
		return "redirect:/viewFeedback";

	}
	
	@RequestMapping("/updateAdminProfile/{aId}")
	public String updateDoctPro(@PathVariable(value = "aId") int aId, ModelMap modelMap) {
		Optional<User> user = userRepository.findById(aId);
		modelMap.addAttribute("user", user);
		return "updateAdminProfile";
	}
	
	
	@RequestMapping(value = "/updateAdmin", method = RequestMethod.POST)
	public String updateDoctor(@ModelAttribute("user") User user) {
		userRepository.save(user);
		return "adminHome";
	}
	

}
