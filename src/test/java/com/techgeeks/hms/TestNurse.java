package com.techgeeks.hms;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.Rollback;

import com.techgeeks.dao.NurseService;
import com.techgeeks.model.Doctor;
import com.techgeeks.model.Feedback;
import com.techgeeks.model.Nurse;
import com.techgeeks.repository.NurseRepository;

@SpringBootTest

public class TestNurse {

	@Autowired
	NurseRepository nurseRepository;

	@Autowired
	NurseService nurseService;

	@Before(value = "")
	public void setUp() {
		nurseService = new NurseService();
	}

	@Test
	public void testNurseService() {
		assertTrue(nurseService instanceof NurseService);
	}

	@Test
	public void testByEmail() {
		String email = "nurse@gmail.com";
		Nurse nurse = nurseRepository.findByNurseEmail(email);
		assertThat(nurse.getNurseEmail()).isEqualTo(email);

	}
	
	
	
	@Test
	  public void testNurseList()
	  {
		  List<Nurse> nurse = (List<Nurse>)nurseRepository.findAll();
		  for(Nurse nur : nurse) {
			  System.out.println(nur);
		  }
		  assertThat(nurse).size().isGreaterThan(0);
	  }
	
	@After(value = "")
	public void setDown() {
		nurseService = null;
	}

}
