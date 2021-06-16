package com.techgeeks.dao;

import java.util.List;
import java.util.Optional;

import com.techgeeks.model.Department;

public interface DepartmentDao {
	
	public void addDepartment(Department department);
	public List<Department>  getAllDepartments();
	public Department editdept(int id);
	
}
