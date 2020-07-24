package com.website.Dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.website.Model.Product;


@Repository
@Transactional
public class ProductDaoImp  implements ProductDao{
	
	@Autowired
	
	private SessionFactory sessionFactory;
	
	
	public void AddProduct(Product product)
	{
		
		 Session  session = sessionFactory.getCurrentSession();
		   session.saveOrUpdate(product);
		
		 	
	}
	public Product getProductById(int  id)
	{
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.get(Product.class, id);
		session.flush();
		
		return product;
	}
	
	@SuppressWarnings("unchecked")
	public List<Product> getAllProducts() {
       

		return sessionFactory.getCurrentSession().createQuery("from Product")
                .list();
    }

	 public void editProduct(Product product) {
	        Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(product);
	        session.flush();
	    }
    public void deleteProduct (int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }
		
	
	

}
