package com.techgeeks.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "doctor")
@Component
public class Doctor {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int docId;
	private String docName;
	@Column(unique = true)
	private String docEmail;
	private String docPass;
	private String docAdd;
	private String phoneNum;
	private String docDept;
	private boolean status=true;

	public Doctor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Doctor(int docId, String docName, String docEmail, String docPass, String docAdd, String phoneNum,
			String docDept, boolean status) {
		super();
		this.docId = docId;
		this.docName = docName;
		this.docEmail = docEmail;
		this.docPass = docPass;
		this.docAdd = docAdd;
		this.phoneNum = phoneNum;
		this.docDept = docDept;
		this.status = status;
	}
	

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public int getDocId() {
		return docId;
	}

	public void setDocId(int docId) {
		this.docId = docId;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getDocEmail() {
		return docEmail;
	}

	public void setDocEmail(String docEmail) {
		this.docEmail = docEmail;
	}

	public String getDocPass() {
		return docPass;
	}

	public void setDocPass(String docPass) {
		this.docPass = docPass;
	}

	public String getDocAdd() {
		return docAdd;
	}

	public void setDocAdd(String docAdd) {
		this.docAdd = docAdd;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getDocDept() {
		return docDept;
	}

	public void setDocDept(String docDept) {
		this.docDept = docDept;
	}

	@Override
	public String toString() {
		return "Doctor [docId=" + docId + ", docName=" + docName + ", docEmail=" + docEmail + ", docPass=" + docPass
				+ ", docAdd=" + docAdd + ", phoneNum=" + phoneNum + ", docDept=" + docDept + "]";
	}

}
