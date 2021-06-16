package com.techgeeks.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techgeeks.dao.DepartmentService;
import com.techgeeks.model.Department;
import com.techgeeks.repository.DepartmentRepository;

@Controller
public class DepartmentController {

	@Autowired
	DepartmentService departmentSevice;

	@Autowired
	DepartmentRepository departmentRepository;

//	uodate the edit dept
	
	@RequestMapping("/department")
	public String department(ModelMap modelmap) {
		List<Department> departmentList = departmentSevice.getAllDepartments();
		//System.out.println(departmentList);
		modelmap.put("departmentList", departmentList);
		return "department";
	}

	@RequestMapping("/editDept/{dept_id}")
	public String updateDept(@PathVariable(value = "dept_id") int dept_id, ModelMap modelMap) {
		Department editedDept = departmentSevice.editdept(dept_id);
		modelMap.addAttribute("editedDept", editedDept);
		return "editDept";
	}
	
	
	@RequestMapping("/deleteDept/{dept_id}")
	public String deleteDept(@PathVariable(value = "dept_id") int dept_id) {
		departmentRepository.deleteById(dept_id);
		return "redirect:/department";
		
	}

//	@RequestMapping("/save")
//	public String saveUpdate(@ModelAttribute("editedDept") Department department) {
//		departmentSevice.addDepartment(department);
//		return "redirect:/department";
//	}
	
	@RequestMapping("/addDepartment")
	public String addDept(ModelMap model) {
		Department department = new Department();
		model.put("department", department);
		return "addDepartment";
	}

	@RequestMapping(value = "/addDepartment", method = RequestMethod.POST)
	public String addDept(@ModelAttribute("department") Department department) {
		departmentSevice.addDepartment(department);
		return "redirect:/department";
	}	
}
