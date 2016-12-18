package com.shop.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.shop.model.entity.UserBean;
import com.shop.model.service.UserBeanService;

@Component
public class Demohandler {
	public UserBean initFlow(){
		return new UserBean();
	}
	@Autowired
	UserBeanService us;
	
	public String validateDetails(UserBean userbean,MessageContext messageContext){
		String status = "success";
		if(userbean.getUserId().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"userId").defaultText("UserId cannot be Empty").build());
			status = "failure";
		}
		if(userbean.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(userbean.getAge()==null){
			messageContext.addMessage(new MessageBuilder().error().source(
					"age").defaultText("Age cannot be Empty").build());
			status = "failure";
		}
		us.add(userbean);
		return status;
	}
}
