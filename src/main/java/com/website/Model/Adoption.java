package com.website.Model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;
@Table(name="adoption")
@Entity
public class Adoption {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private int adoptionId;
	@Column
	@NotEmpty(message="Enter your name")
	private String  adoptionName;
	@Column
	@NotNull(message ="Enter the age")
	private String adoptionAge;
	@Column
	@NotNull(message="Enter Your 10 digit Mobile no")
	private Long  adoptionContact;
	@Column
	@NotEmpty(message="Enter your Email")
	private String adoptionEmail;
	@Column
	private String idType; 
	
	@Transient
	private MultipartFile Id;
	public int getAdoptionId() {
		return adoptionId;
	}
	public void setAdoptionId(int adoptionId) {
		this.adoptionId = adoptionId;
	}
	public String getAdoptionName() {
		return adoptionName;
	}
	public void setAdoptionName(String adoptionName) {
		this.adoptionName = adoptionName;
	}
	public String getAdoptionAge() {
		return adoptionAge;
	}
	public void setAdoptionAge(String adoptionAge) {
		this.adoptionAge = adoptionAge;
	}
	public Long getAdoptionContact() {
		return adoptionContact;
	}
	public void setAdoptionContact(Long adoptionContact) {
		this.adoptionContact = adoptionContact;
	}
	public String getAdoptionEmail() {
		return adoptionEmail;
	}
	public void setAdoptionEmail(String adoptionEmail) {
		this.adoptionEmail = adoptionEmail;
	}
	public String getIdType() {
		return idType;
	}
	public void setIdType(String idType) {
		this.idType = idType;
	}
	public MultipartFile getId() {
		return Id;
	}
	public void setId(MultipartFile id) {
		Id = id;
	}
	
	
	
	
	

}
