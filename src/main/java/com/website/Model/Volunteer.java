package com.website.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="Volunteer")
@SecondaryTable(name="Event")
public class Volunteer {
	@Column
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int volunteerId;
	
	@NotEmpty(message="Enter your name")
	@Column
	private String volunteerName;
	
	@Column
	private String volunteerGender;
	@NotNull(message="Enter your Age")
	@Column
	private int volunteerAge;
	@NotNull(message="Enter your Contact No")
	@Column
	private int volunteerContact;
	@NotEmpty(message="Enter your EmailAddress")
	@Column
	private String volunteerEmail;
	
	@Column
	private String volunteerEvent;
	public int getVolunteerId() {
		return volunteerId;
	}

	public void setVolunteerId(int volunteerId) {
		this.volunteerId = volunteerId;
	}

	public String getVolunteerName() {
		return volunteerName;
	}

	public void setVolunteerName(String volunteerName) {
		this.volunteerName = volunteerName;
	}

	public String getVolunteerGender() {
		return volunteerGender;
	}

	public void setVolunteerGender(String volunteerGender) {
		this.volunteerGender = volunteerGender;
	}

	public int getVolunteerAge() {
		return volunteerAge;
	}

	public void setVolunteerAge(int volunteerAge) {
		this.volunteerAge = volunteerAge;
	}

	public int getVolunteerContact() {
		return volunteerContact;
	}

	public void setVolunteerContact(int volunteerContact) {
		this.volunteerContact = volunteerContact;
	}

	public String getVolunteerEmail() {
		return volunteerEmail;
	}

	public void setVolunteerEmail(String volunteerEmail) {
		this.volunteerEmail = volunteerEmail;
	}

	public String getVolunteerEvent() {
		return volunteerEvent;
	}

	public void setVolunteerEvent(String volunteerEvent) {
		this.volunteerEvent = volunteerEvent;
	}

	
	

	
	
}