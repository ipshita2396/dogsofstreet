package com.website.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

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

import com.website.Dao.AdoptionDao;
import com.website.Dao.EventDao;
import com.website.Dao.ProductDao;
import com.website.Dao.VolunteerDao;
import com.website.Model.Adoption;
import com.website.Model.Event;
import com.website.Model.Product;
import com.website.Model.Volunteer;

@Controller
public class AdminController {

	private Path path;
	@Autowired
	private VolunteerDao volunteerDao;
	
	@Autowired
	private ProductDao productDao;
	@Autowired
	private EventDao eventDao;
	
	@Autowired
	private AdoptionDao adoptionDao;
	
	@RequestMapping("/admin")
	public String Admin()
	{
		return "admin";
	}
	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model)
	{
		List<Product> products=productDao.getAllProducts();
		
		model.addAttribute("products",products);		// bind the object to the model;
		
		return "productInventory";
	}
	@RequestMapping("/admin/productInventory/createProduct")
	
	
		public String createProduct(Model model)
		{
			Product product=new Product();
			model.addAttribute("product",product);
			
			return "createProduct";
			
		}

	

@RequestMapping(value = "/admin/productInventory/createProduct", method = RequestMethod.POST)
public String addProductPost(@Valid @ModelAttribute("product") Product product,BindingResult result ,HttpServletRequest request) {
    
	
    if(result.hasErrors())
    {
    	return "createProduct";
    }
    
    productDao.AddProduct(product);
    MultipartFile productImage = product.getProductImage();
    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
     path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\Images\\"+product.getProductId()+".png");

    if (productImage != null && !productImage.isEmpty()) {
        try {
            productImage.transferTo(new File(path.toString()));
        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException("Product image saving failed", e);
        }
    }

    return "redirect:/admin/productInventory";
}

@RequestMapping("/admin/productInventory/deleteProduct/{productId}")
    public String deleteProduct(@PathVariable int productId, Model model) 
	{
		
		productDao.deleteProduct(productId);
		
		return"redirect:/admin/productInventory";
		
		
	}
@RequestMapping("/admin/productInventory/editProduct/{productId}")
public String editProduct(@PathVariable int productId, Model model) {
    Product product = productDao.getProductById(productId);

    model.addAttribute(product);

    return"editProduct";
}
@RequestMapping(value = "/admin/productInventory/editProduct", method = RequestMethod.POST)
public String editProduct(@Valid @ModelAttribute("product") Product product,BindingResult result, Model model, HttpServletRequest
        request) {
	
	if(result.hasErrors())
	{
		return "editProduct";
	}

    MultipartFile productImage = product.getProductImage();
    String rootDirectory = request.getSession().getServletContext().getRealPath("/");
    path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");

    if (productImage != null && !productImage.isEmpty()) {
        try {
            productImage.transferTo(new File(path.toString()));
        } catch (Exception e) {
            throw new RuntimeException("Product image saving failed" , e);
        }
    }

    productDao.editProduct(product);

    return "redirect:/admin/productInventory";
}
@RequestMapping("admin/EventList")
public String getEvent(Model model)
{
	List<Event> events=eventDao.getAllEvents();
	
	model.addAttribute("events", events);
	
	return"eventList";
}
	
@RequestMapping("/admin/EventList/createEvent")
public String createEvent(Model model)
{
	Event event=new Event();
    model.addAttribute("event",event);
    
    return "createEvent";
    
}
@RequestMapping(value = "/admin/EventList/createEvent", method = RequestMethod.POST)
public String addEventPost(@Valid @ModelAttribute("event") Event event,BindingResult result ,HttpServletRequest request) {
    
	
    if(result.hasErrors())
    {
    	return "createEvent";
    }
    
    eventDao.AddEvent(event);
    
    return"redirect:/admin/EventList";
}
@RequestMapping("/admin/VolunteerList")
public String viewVolunteer(Model model)
  {
	List<Volunteer>volunteers=volunteerDao.getAllVolunteer();
	model.addAttribute("volunteers", volunteers);

	return "volunteerList";
  }
@RequestMapping("/admin/adoptionList")
public String viewAdoption(Model model)
{
	List<Adoption>adoption=adoptionDao.getAllAdoption();
	model.addAttribute("adoption",adoption);
	
	return "adoptionList";
}
}


