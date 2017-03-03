package com.fashion.controller;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
@RequestMapping("/Signin")
public String gotoHome3()
{
	return "Signin";
}
/*@RequestMapping("/Signup")
public String gotoHome4()
{
	return "Signup";
}*/
@RequestMapping("/index")
public String gotoHome5()
{
	return "index";
}
@RequestMapping("/Header")
public String gotoHome6()
{
	return "Header";
}
@RequestMapping("/Logout")
public String gotoHome7()
{
	return "Logout";
}
@RequestMapping("/Sig2")
public String gotoHome8()
{
	return "Sig2";
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


