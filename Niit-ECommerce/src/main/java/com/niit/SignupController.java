package com.niit;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.Customer;
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
	public String SaveUserInfo(@ModelAttribute(name="user")Customer user)
	{   
		customerservice.SaveUserInfo(user);
		return "index";
	}
	
}
