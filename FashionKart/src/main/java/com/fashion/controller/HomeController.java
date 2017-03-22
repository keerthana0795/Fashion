package com.fashion.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	public HomeController() {
		//super();
		// TODO Auto-generated constructor stub
		System.out.println("inside controller");
	}
	
@RequestMapping("/")
	public String gotoHome()
	{
		return "index";
	}
@RequestMapping("/Aboutus")
public String gotoHome2()
{
	return "Aboutus";
}

//login?error, login?logout, login
@RequestMapping("/Signin")
public String signin(@RequestParam(value="error",required=false) String error,
		@RequestParam(value="logout",required=false) String logout,
		Model model){
	if(error!=null)
		model.addAttribute("error","Invalid Username and Password.. Please enter valid username and password");
	if(logout!=null)
		model.addAttribute("logout","Loggedout successfully..");
	return "Signin";
}

@RequestMapping("/index")
public String gotoHome5()
{
	return "index";
}

@RequestMapping(value="LogCheck",method=RequestMethod.POST)

public void validateLogin(HttpServletRequest request,HttpServletRequest response,ServletRequest req,ServletResponse res)throws ServletException,IOException
{
	String u=request.getParameter("username");
	String p=request.getParameter("password");
	LoginCredential obj=new LoginCredential();
	obj.setUname(u);
	obj.setPasswd(p);
    if(obj.CheckLogin())
    {
    	RequestDispatcher dispatch=request.getRequestDispatcher("Header");
    	dispatch.forward(req,res);
    }
    else
    {
    	RequestDispatcher dispatch=request.getRequestDispatcher("Signup");
    	dispatch.forward(req,res);
    }
	}

}


