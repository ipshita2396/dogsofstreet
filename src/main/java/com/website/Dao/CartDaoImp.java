package com.website.Dao;

import com.website.Model.Cart;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;



@Repository
@Transactional
class CartDaoImp implements CartDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Cart getCartById (int cartId) {
	    Session session = sessionFactory.getCurrentSession();
	    return (Cart) session.get(Cart.class, cartId);
	}
	
	public void update(Cart cart) {
	    int cartId = cart.getCartId();
	    // to do later

	}

}