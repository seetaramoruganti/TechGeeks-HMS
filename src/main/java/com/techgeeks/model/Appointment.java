package com.techgeeks.model;

import java.util.Arrays;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "appointment")
@Component
public class Appointment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int apid;

	private String name;
	private String email;
	private String contact;
	private int age;
	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date day;
	private String speciality;
	private int docid;
	private int patid;
	private String description;

	@Lob
	private byte[] data;

	private String fname;
	private String ftype;

	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Appointment(int apid, String name, String email, String contact, int age, Date day, String speciality,
			int docid, int patid, String description, byte[] data, String fname, String ftype) {
		super();
		this.apid = apid;
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.age = age;
		this.day = day;
		this.speciality = speciality;
		this.docid = docid;
		this.patid = patid;
		this.description = description;
		this.data = data;
		this.fname = fname;
		this.ftype = ftype;
	}

	public int getApid() {
		return apid;
	}

	public void setApid(int apid) {
		this.apid = apid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getDay() {
		return day;
	}

	public void setDay(Date day) {
		this.day = day;
	}

	public String getSpeciality() {
		return speciality;
	}

	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}

	public int getDocid() {
		return docid;
	}

	public void setDocid(int docid) {
		this.docid = docid;
	}

	public int getPatid() {
		return patid;
	}

	public void setPatid(int patid) {
		this.patid = patid;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getFtype() {
		return ftype;
	}

	public void setFtype(String ftype) {
		this.ftype = ftype;
	}

	@Override
	public String toString() {
		return "Appointment [apid=" + apid + ", name=" + name + ", email=" + email + ", contact=" + contact + ", age="
				+ age + ", day=" + day + ", speciality=" + speciality + ", docid=" + docid + ", patid=" + patid
				+ ", description=" + description + ", data=" + Arrays.toString(data) + ", fname=" + fname + ", ftype="
				+ ftype + "]";
	}

}
