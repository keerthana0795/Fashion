package com.fashion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerOrderController {

	@RequestMapping("/order/{cartId}")
	public String createOrder(@PathVariable int cartId){
		System.out.println("im in COController");
		return "redirect:/checkout?cartId=" +cartId;
	}
	
}
