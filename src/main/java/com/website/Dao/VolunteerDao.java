package com.website.Dao;

import java.util.List;

import com.website.Model.Event;
import com.website.Model.Volunteer;



public interface VolunteerDao {

	public void AddVolunteer(Volunteer volunteer);
	public List<Volunteer>getAllVolunteer();
	
}
