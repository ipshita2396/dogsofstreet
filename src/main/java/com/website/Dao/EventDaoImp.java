package com.website.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.website.Model.Event;
import com.website.Model.Product;

@Repository
@Transactional
public class EventDaoImp implements EventDao{

@Autowired
	
	private SessionFactory sessionFactory;
	
	
	public void AddEvent(Event event)
	{
		
		 Session  session = sessionFactory.getCurrentSession();
		   session.saveOrUpdate(event);
		
		 	
	}
	public Event getEventById(int id)
	{
		Session session=sessionFactory.getCurrentSession();
		Event event=(Event)session.get(Event.class, id);
		session.flush();
		
		return event;
	}
	
	@SuppressWarnings("unchecked")
	public List<Event> getAllEvents() {
       

		return sessionFactory.getCurrentSession().createQuery("from Event")
                .list();

    }

	 public void editEvent(Event event) {
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(event);
	        session.flush();
	    }
    public void deleteEvent (int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getEventById(id));
        session.flush();
    }
		
	
	


}
