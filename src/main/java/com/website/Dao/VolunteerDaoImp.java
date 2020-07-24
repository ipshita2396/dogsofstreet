package com.website.Dao;
import com.website.Model.Event;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.website.Dao.VolunteerDao;
import com.website.Model.Volunteer;
@Repository
@Transactional
public class VolunteerDaoImp implements VolunteerDao{
@Autowired
	private SessionFactory sessionFactory;

	public void AddVolunteer(Volunteer volunteer) {
		
		Session  session = sessionFactory.getCurrentSession();
		   session.saveOrUpdate(volunteer);
			
	}

	@SuppressWarnings("unchecked")
	public List<Volunteer> getAllVolunteer() {
		
		return sessionFactory.getCurrentSession().createQuery("from Volunteer")
                .list();

	}
	
	}

