package com.techgeeks.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.techgeeks.model.Department;
import com.techgeeks.repository.DepartmentRepository;

@Component
public class DepartmentService implements DepartmentDao {

	@Autowired
	DepartmentRepository departmentRespository ;
	
	@Override
	public void addDepartment(Department department) {
		// TODO Auto-generated method stub
		
		departmentRespository.save(department);
	}

	@Override
	
	public List<Department> getAllDepartments() {
		List<Department> departmentList = departmentRespository.findAll();
		//System.out.println(departmentList);
		return departmentList;
	}

	@Override
	public Department editdept(int id) {
		// TODO Auto-generated method stub
		Department department = departmentRespository.findById(id).get();
		return department;
	}
	
//	@Autowired
//	public void updateDept(Department department) {
//		// TODO Auto-generated method stub
////		
////		Department d = departmentRespository.findById(dept_id).get();
////		d.setDeptName(department.getDeptName());
////		d.setDeptDesc(department.getDeptDesc());
//		departmentRespository.save(department);
//		
//		
//	}

	

}
