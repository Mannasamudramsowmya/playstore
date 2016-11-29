package com.shop.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shop.model.service.CategoryService;
import com.shop.model.service.ProductService;
@Controller

public class HomeController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/")
	public String showMessage(Map<String, Object> map)
			 {
		map.put("categoryList", categoryService.getAllCategory());

		return "index";
	}
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/prolist")
	public String showM(/*@RequestParam("val")String id,*/Map<String, Object> map)
			 {
		map.put("productList", productService.getAllProduct());
		return "prolist";
	}
	
	@RequestMapping("/allproduct")

	public String show(@RequestParam("val")String id,Map<String, Object> map)
	 {
map.put("productList", productService.getAllProductfromcategory(id));
return "prolist";
}
	
	@RequestMapping("/login")
	public ModelAndView getLoginForm(
			@RequestParam(required = false) String authfailed, String logout,
			String denied) {
		String message = "";
		if (authfailed != null) {
			message = "Invalid username of password, try again !";
		} else if (logout != null) {
			message = "Logged Out successfully, login again to continue !";
		} else if (denied != null) {
			message = "Access denied for this user !";
		}
		return new ModelAndView("login", "message", message);
	}
 
 
	@RequestMapping("/user")
	public String geUserPage() {
		return "user";
	}
 
	@RequestMapping("/admin")
	public String geAdminPage() {
		return "admin";
	}
 
	@RequestMapping("/403page")
	public String ge403denied() {
		return "redirect:login?denied";
	}
}
