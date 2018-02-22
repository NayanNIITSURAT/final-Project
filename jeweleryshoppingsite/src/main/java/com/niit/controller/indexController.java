package com.niit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class indexController {
	@Autowired
	
	@RequestMapping("/first")
	public String home(){
	System.out.println("In Home");
	return "index";
		}
	@RequestMapping("/header")
	public String header(){
		System.out.println("In header");
		return "header";
			}
	@RequestMapping("/footer")
	public String signin(){
		System.out.println("In footer");
		return "footer";
			}
	@RequestMapping("/signin")
	public String loginin(){
		System.out.println("SingIning");
		return "signin";
	}
	@RequestMapping("/admin")
	public String admin(){
		System.out.println("admin added");
		return "Adminadding";
	}
	@RequestMapping("/registration")
	public String registration(){
		System.out.println("Registration");
		return "Registration";
			}
	
	@RequestMapping("/Contact_us")
	public String contact()
	{
		System.out.println("Contact Us");
		return "Contact_us";
	}
	@RequestMapping("/aboutus")
	public String about()
	{
		System.out.println("aboutus");
		return "aboutus";
	}
	 @RequestMapping(value = "/login", method = RequestMethod.GET)
	  public ModelAndView showLogin(HttpServletRequest request, HttpServletResponse response) {
	    ModelAndView mav = new ModelAndView("login");
//	    mav.addObject("login", new Login());
	    return mav;
	  }

}

