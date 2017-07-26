package com.niit;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
import com.niit.model.User;
import com.niit.service.CustomerService;

@Controller
public class SignupController {
	
	@Autowired
	CustomerService customerservice;
	
	@RequestMapping("/Signup")
	public String SignupUser(Model model)
	{   
		model.addAttribute("user",new Customer());
		return "Signup";
	}
	
	@RequestMapping("/SignupUser")
	public String SaveUserInfo(@Valid @ModelAttribute(name="user")Customer user,BindingResult result,Model model)
	{   
		if(result.hasErrors())
	{
		return "Signup";
	}
		
		User usr=customerservice.ValidateUsername(user.getUser().getUsername());
		
		if(usr!=null)
		{
		model.addAttribute("Duplicateusername","UserName Already Exists");
		return "Signup";
		}
		
		Customer customer=customerservice.ValidateEmail(user.getEmail());
		
		if(customer!=null)
		{
			model.addAttribute("Duplicateemail","This Email Is Already Registered");
			return "Signup";
		}
		customerservice.SaveUserInfo(user);
		return "index";
	}
	
}
