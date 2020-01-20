package com.website;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


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
	public Product getProductById(String id)
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

    public void deleteProduct (String id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }
		
	
	

}
