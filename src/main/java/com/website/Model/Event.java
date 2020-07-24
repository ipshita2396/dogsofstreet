package com.website.Model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
@Entity
@Table(name="Event")
public class Event {

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int eventId;
	@Column
	@NotEmpty(message="Event name cant be empty")
	private String eventName;
	@Column
	private String eventDesicription;
	@Column
	private String eventLocation;
	@Column
	@DateTimeFormat(pattern = "yyyy/mm/dd")
	private Date date;
	
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getEventDesicription() {
		return eventDesicription;
	}
	public void setEventDesicription(String eventDesicription) {
		this.eventDesicription = eventDesicription;
	}
	public String getEventLocation() {
		return eventLocation;
	}
	public void setEventLocation(String eventLocation) {
		this.eventLocation = eventLocation;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
}
