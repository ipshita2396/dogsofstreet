package com.website.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import com.website.Dao.CustomerDao;
import com.website.Model.Customer;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RegisterController {
@Autowired
private CustomerDao customerDao;
	
	@RequestMapping("/register")
	public String Register(Model model)
	{
		Customer customer=new Customer();
		model.addAttribute("customer" ,customer);
		return "register";
	}
	@RequestMapping(value = "/register", method = RequestMethod.POST)
    public String registerCustomerPost(@ModelAttribute("customer") Customer customer, Model model) {

        customer.setEnabled(true);
        customerDao.AddCustomer(customer);

        return "home";

    }
}
