package com.website.Dao;

import java.util.List;

import com.website.Model.Customer;

public interface CustomerDao {

	public void AddCustomer( Customer customer);
	public List<Customer> getAllCustomer();
	Customer getCustomerById (int customerId);
    Customer getCustomerByUsername (String username);
}
