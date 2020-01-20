package com.website;

import java.util.List;

public interface ProductDao {

	public  void AddProduct(Product product);
	 public Product getProductById(String Id);
	 public List<Product>getAllProducts();
	 public void deleteProduct(String id);
}
