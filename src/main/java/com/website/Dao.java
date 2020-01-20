package com.website;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Dao {
	private List<Product>productList;
	
	public List<Product> getproductList()
	{
		
	Product product1=new Product();
	Product product2=new Product();
	Product product3=new Product();
	
	 product1.setProductId("pi:1001");
	 product1.setProductName("Tshirt -1");
	 product1.setProductCategory("Tshirt");
	 product1.setProductDiscription("This is a large size tshirt");
		 product1.setProductPrice(500);
	 
	 product2.setProductId("pi:1002");
	 product2.setProductName("Mug-1");
	 product2.setProductCategory("Mugs");
	 product2.setProductDiscription("dogofstreet Mug");
	
	 product2.setProductPrice(250);
	 
	 product3.setProductId("pi:1003");
	 product3.setProductName("Mug-2");
	 product3.setProductCategory("Mugs");
	 product3.setProductDiscription("dogofstreet Mug");
	
	 product3.setProductPrice(250);
	 
	 productList=new ArrayList<Product>();
	 
	 productList.add(product1);
	 productList.add(product2);
	 productList.add(product3);
	
	 return productList;
	}

	public Product getProductById(String productId) throws IOException{
        for (Product product: getproductList()) {
            if(product.getProductId().equals(productId)) {
                return product;
            }
        }

        throw new IOException("No product found.");
    }
}


