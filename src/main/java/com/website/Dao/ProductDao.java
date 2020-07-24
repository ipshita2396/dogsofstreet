package com.website.Dao;

import java.util.List;

import com.website.Model.Product;

public interface ProductDao {

	public  void AddProduct(Product product);
	 public Product getProductById(int Id);
	 public List<Product>getAllProducts();
	 public void editProduct(Product product);
	 public  void deleteProduct(int productId); 
}
