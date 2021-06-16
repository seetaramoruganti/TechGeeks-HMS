package com.techgeeks.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "department")
@Component
public class Department {

	
	private int dept_id;

	private String deptName;
	private String deptDesc;

	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Department(int dept_id, String deptName, String deptDesc) {
		super();
		this.dept_id = dept_id;
		this.deptName = deptName;
		this.deptDesc = deptDesc;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getDept_id() {
		return dept_id;
	}

	public void setDept_id(int dept_id) {
		this.dept_id = dept_id;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public String getDeptDesc() {
		return deptDesc;
	}

	public void setDeptDesc(String deptDesc) {
		this.deptDesc = deptDesc;
	}

	@Override
	public String toString() {
		return "Department [dept_id=" + dept_id + ", deptName=" + deptName + ", deptDesc=" + deptDesc + "]";
	}

}
