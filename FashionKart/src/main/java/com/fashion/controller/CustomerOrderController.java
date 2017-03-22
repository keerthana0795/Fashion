package com.fashion.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

public class CustomerOrderController  {
	@RequestMapping("/order/{cartId}")
	public String createOrder(@PathVariable int cartId){
		System.out.println("I'm inside customerordercontroller");
		return "redirect:/checkout?cartId=" +cartId;
	}

}
