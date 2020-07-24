package com.website.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.website.Model.Adoption;
@Repository
@Transactional
public class AdoptionDaoImp implements AdoptionDao {
	@Autowired
	private SessionFactory sessionFactory;

	public void AddAdoption(Adoption adoption) {
	 Session session=sessionFactory.getCurrentSession();
	 session.saveOrUpdate(adoption);
	 
		
	}
@SuppressWarnings("unchecked")
	public List<Adoption> getAllAdoption() {
		
		return sessionFactory.getCurrentSession().createQuery("from Adoption")
                .list();

	}
	


	
}
