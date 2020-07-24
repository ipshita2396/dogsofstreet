package com.website.Dao;

import java.util.List;

import com.website.Model.Event;


public interface EventDao {
	
public 	void AddEvent(Event event);
public Event getEventById(int eventId);
public List<Event>getAllEvents();
public void editEvent(Event event);
public  void deleteEvent(int eventId); 

}
