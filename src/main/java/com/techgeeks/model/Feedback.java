package com.techgeeks.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "feedback")
@Component
public class Feedback {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int f_id;
	private String name;
	private String email;
	private String contact;
	private String suggestion;

	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Feedback(String name, String email, String contact, String suggestion) {
		super();
		this.name = name;
		this.email = email;
		this.contact = contact;
		this.suggestion = suggestion;
	}

	public int getF_id() {
		return f_id;
	}

	public void setF_id(int f_id) {
		this.f_id = f_id;
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

	public String getSuggestion() {
		return suggestion;
	}

	public void setSuggestion(String suggestion) {
		this.suggestion = suggestion;
	}

	@Override
	public String toString() {
		return "Feedback [name=" + name + ", email=" + email + ", contact=" + contact + ", suggestion=" + suggestion
				+ "]";
	}

}
