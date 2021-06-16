package com.techgeeks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techgeeks.dao.PatientService;
import com.techgeeks.model.Feedback;

@Controller
public class FeedbackController {

	@Autowired
	PatientService patientService;

	@RequestMapping("/feedback")
	public String feedbackform(ModelMap modelMap) {
		Feedback feedback = new Feedback();
		modelMap.put("feedback", feedback);
		return "feedbackForm";
	}

	@RequestMapping(value = "/saveFeedback", method = RequestMethod.POST)
	public String saveFeedback(@ModelAttribute("feedback") Feedback feedback) {
		patientService.addFeedback(feedback);
		return "patientHome";
	}
}
