package com.techgeeks.hms;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.Assert.assertTrue;

import java.util.List;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Before;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.techgeeks.dao.DepartmentService;
import com.techgeeks.dao.NurseService;
import com.techgeeks.model.Department;
import com.techgeeks.model.Nurse;
import com.techgeeks.repository.DepartmentRepository;

@SpringBootTest
public class TestDepartment {
	
	
	@Autowired
	DepartmentRepository departmentRepository;
	
	@Autowired
	DepartmentService departmentService;
	
	@Before(value = "")
	public void setUp() {
		departmentService = new DepartmentService();
	}

	@Test
	public void testDepartmentService() {
		assertTrue(departmentService instanceof DepartmentService);
	}
	
	
	@Test
	public void testById() {
		Integer id = 1;
		String d_name="Outpatient Department (OPD)";
		Department department = departmentRepository.findById(id).get();
		assertThat(department.getDeptName()).isEqualTo(d_name);

	}
	
	
	@Test
	  public void testDepartmentList()
	  {
		  List<Department> department = (List<Department>)departmentRepository.findAll();
		  for(Department dep : department) {
			  System.out.println(dep);
		  }
		  assertThat(department).size().isGreaterThan(0);
	  }
	
	@After(value = "")
	public void setDown() {
		departmentService = null;
	}
	

}
