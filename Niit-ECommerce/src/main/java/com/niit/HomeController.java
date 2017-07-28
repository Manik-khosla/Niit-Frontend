package com.niit;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping({"/","/Home"})
	public String Homepage()
	{
		return "index";
	}
	
	@RequestMapping("/AboutUs")
	public String Aboutus()
	{
		return "AboutUs";
	}
	
	@RequestMapping("/ContactUs")
	public String Contactus()
	{
		return "ContactUs";
	}
	
	@RequestMapping("/Login")
	public String Login()
	{
		return "Login";
	}

}
