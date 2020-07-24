
package com.website.controller;
import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.List;
import java.nio.file.Path;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.website.Dao.EventDao;
import com.website.Dao.ProductDao;
import com.website.Dao.VolunteerDao;
import com.website.Dao.AdoptionDao;
import com.website.Model.Adoption;
import com.website.Model.Event;
import com.website.Model.Product;
import com.website.Model.Volunteer;
@Controller
public class HomeController {
	
	 private Path path;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private VolunteerDao volunteerDao;
	@Autowired
	private AdoptionDao adoptionDao;
	
	@RequestMapping("/")
	public String  home()
	{
		return"home";
	}
	
	@RequestMapping("/productList")
	public String getProduct(Model model)		
	{
		List<Product> products=productDao.getAllProducts();
		
		model.addAttribute("products",products);		// bind the object to the model;
		
		return "productList";
		
	}
	@RequestMapping("/productList/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException{

        Product product = productDao.getProductById(productId);
        model.addAttribute(product);

        return "viewProduct";
    }
	@RequestMapping("/createVolunteer")
	public String createVolentter(Model model)
	{
		
		Volunteer volunteer= new Volunteer();
		model.addAttribute("volunteer",volunteer);
		
		return"createVolunteer";
	}
	@RequestMapping(value = "/createVolunteer", method = RequestMethod.POST)
	public String addVolunteerPost(@Valid @ModelAttribute("volunteer") Volunteer volunteer,BindingResult result ,HttpServletRequest request) {
	    
		
	    if(result.hasErrors())
	    {
	    	return "createVolunteer";
	    }
	    
	   volunteerDao.AddVolunteer(volunteer);
	    
	    return"redirect:/admin";
	}
	@RequestMapping("/Adoption")
	public String adoption(Model model)
	{
		Adoption adoption=new Adoption();
		model.addAttribute("adoption", adoption);
		return "Adoption";
	}
	@RequestMapping(value="/Adoption" ,method= RequestMethod.POST)
	public String addAdoption(@Valid @ModelAttribute("adoption") Adoption adoption,BindingResult result ,HttpServletRequest request) 
	{
		if(result.hasErrors())
	    {
	    	return "Adoption";
	    }
		adoptionDao.AddAdoption(adoption);
	    
	    return"redirect:/admin/adoptionList";
	}


}
