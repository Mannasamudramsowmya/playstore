package com.shop.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.model.entity.Register;
import com.shop.model.service.RegisterService;

@Controller
public class RegisterController {
	@Autowired
    RegisterService registerService;
    
	@RequestMapping("/register")
	public String setupregForm(Map<String, Object> map){
		Register register = new Register();
		map.put("register", register);
		map.put("registerList", registerService.getAllRegister());		
	return "register";
	}

	@RequestMapping(value="/register.do", method=RequestMethod.POST)
	public String doregActions(@Valid @ModelAttribute ("register")Register register, BindingResult result, @RequestParam String action, Map<String, Object> map){
		if(result.hasErrors())
		{
			return "register";
		}
		
		Register registerResult = new Register();
		switch(action.toLowerCase()){	
		case "register":
			registerService.add(register);
			/*registerResult = register;*/
			break;
		case "edit":
			registerService.edit(register);
			/*registerResult = register;*/
			break;
			
		}
		map.put("register", registerResult);
		map.put("registerList", registerService.getAllRegister());
		return "register";
	}
	 @RequestMapping("/final")
	 public String getList() {
	  List registerList = registerService.getAllRegister();
	  return "final";
	 }
	
	}

