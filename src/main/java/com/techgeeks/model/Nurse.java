package com.techgeeks.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "nurse")
@Component
public class Nurse {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int nurseId;
	private String nurseName;
	@Column(unique = true)
	private String nurseEmail;
	private String nursePass;
	private String nurseAdd;
	private String nurseNum;
	

	public Nurse() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getNurseId() {
		return nurseId;
	}


	public void setNurseId(int nurseId) {
		this.nurseId = nurseId;
	}


	public String getNurseName() {
		return nurseName;
	}


	public void setNurseName(String nurseName) {
		this.nurseName = nurseName;
	}


	public String getNurseEmail() {
		return nurseEmail;
	}


	public void setNurseEmail(String nurseEmail) {
		this.nurseEmail = nurseEmail;
	}


	public String getNursePass() {
		return nursePass;
	}


	public void setNursePass(String nursePass) {
		this.nursePass = nursePass;
	}


	public String getNurseAdd() {
		return nurseAdd;
	}


	public void setNurseAdd(String nurseAdd) {
		this.nurseAdd = nurseAdd;
	}


	public String getNurseNum() {
		return nurseNum;
	}


	public void setNurseNum(String nurseNum) {
		this.nurseNum = nurseNum;
	}


	@Override
	public String toString() {
		return "Nurse [nurseId=" + nurseId + ", nurseName=" + nurseName + ", nurseEmail=" + nurseEmail + ", nursePass="
				+ nursePass + ", nurseAdd=" + nurseAdd + ", nurseNum=" + nurseNum + "]";
	}

	

}
