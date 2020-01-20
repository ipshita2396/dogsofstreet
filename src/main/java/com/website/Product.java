package com.website;
import javax.persistence.*;
@Entity
@Table(name="Product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column
	private String productId;
	@Column
	private String productName;
	@Column
	private String productCategory;
	@Column
	private String productDiscription;
	
	@Column
	private int productPrice;
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductDiscription() {
		return productDiscription;
	}
	public void setProductDiscription(String productDiscription) {
		this.productDiscription = productDiscription;
	}
	

}
