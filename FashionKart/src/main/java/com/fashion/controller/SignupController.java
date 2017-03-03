package com.fashion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.model.Signup;
import com.fashion.service.SignupService;

@Controller
public class SignupController 
{
	@Autowired
	private SignupService SignupService;
	
	public SignupController()
	{
		System.out.println("Creating instance for SignupController");
	}
	
	@RequestMapping("/Signup")
	public ModelAndView gotoSignup(@ModelAttribute("supfrm")Signup supfrm) 
	{
		  return new ModelAndView("Signup");
	}
	
	
	
	@RequestMapping(value = "saveSignup", method = RequestMethod.POST)
	public ModelAndView saveSignup(@ModelAttribute("supfrm")Signup supfrm)
	{
		
		SignupService.insertRow(supfrm);
		List<Signup> ls=SignupService.getList();
		return new ModelAndView("Signup","signuplist",ls);
	}
	
	@RequestMapping("/listSignup")
	public ModelAndView listallSignup()
	{
		List<Signup> ls=SignupService.getList();
		return new ModelAndView("listSignup","Signuplist",ls);
	}
	
	@RequestMapping("deleteSignup")
	public ModelAndView deleteSignup(@RequestParam int id)
	{
		
		SignupService.deleteRow(id);
		return new ModelAndView("redirect:listSignup");
	}
	
	@RequestMapping("/editSignup")
	public ModelAndView editSignup(@ModelAttribute("supfrm")Signup supfrm,@RequestParam int id)
	{
		supfrm=SignupService.getRowById(id);
		ModelAndView mv=new ModelAndView("editSignup","sign",supfrm);
		return mv;
		
	}
	
}