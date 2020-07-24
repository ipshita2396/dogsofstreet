package com.website.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.website.Dao.CustomerDao;
import com.website.Model.Authorities;
import com.website.Model.Cart;
import com.website.Model.Customer;
import com.website.Model.Users;
import com.website.Model.Users;
@Repository
@Transactional
public class CustomerDaoImp implements CustomerDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void AddCustomer(Customer customer)
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
		 Users newUser = new Users();
	        newUser.setUsername(customer. getCustomerUsername());
	        newUser.setPassword(customer.getCustomerPassword());
	        newUser.setEnabled(true);
	        newUser.setCustomerId(customer.getCustomerId());

	        Authorities newAuthority = new Authorities();
	        newAuthority.setUsername(customer.getCustomerUsername());
	        newAuthority.setAuthority("ROLE_USER");
	        session.saveOrUpdate(newUser);
	        session.saveOrUpdate(newAuthority);

	        Cart newCart = new Cart();
	        newCart.setCustomer(customer);
	        customer.setCart(newCart);
	        session.saveOrUpdate(customer);
	        session.saveOrUpdate(newCart);


	        session.saveOrUpdate(customer);
	        session.flush();
	}
	 @SuppressWarnings("unchecked")
	public List<Customer> getAllCustomer() {
		 return sessionFactory.getCurrentSession().createQuery("from Customer")
	                .list();

	    }
	 public Customer getCustomerById (int customerId) {
	        Session session = sessionFactory.getCurrentSession();
	        return (Customer) session.get(Customer.class, customerId);
	    }


	    public Customer getCustomerByUsername (String username) {
	        Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from Customer where customerUsername = ?");
	        query.setString(0, username);

	        return (Customer) query.uniqueResult();

	
}
}
