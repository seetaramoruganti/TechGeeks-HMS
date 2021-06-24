package com.techgeeks.hms;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.techgeeks.model.Doctor;
import com.techgeeks.model.Feedback;
import com.techgeeks.model.Nurse;
import com.techgeeks.repository.FeedBackRepository;

@SpringBootTest
public class TestFeedback {
	
	
	@Autowired
	FeedBackRepository feedBackRepository;
	
	
	
	
	@Test
	  public void testFeedbackList()
	  {
		  List<Feedback> feedback = (List<Feedback>)feedBackRepository.findAll();
		  for(Feedback nur : feedback) {
			  System.out.println(nur);
		  }
		  assertThat(feedback).size().isGreaterThan(0);
	  }


}
