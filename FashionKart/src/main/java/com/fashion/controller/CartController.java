package com.fashion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fashion.model.Cart;
import com.fashion.model.CartItem;
import com.fashion.model.Customer;
import com.fashion.service.CartItemService;
import com.fashion.service.CartService;
import com.fashion.service.CustomerService;
import com.google.gson.Gson;

@Controller
public class CartController {
@Autowired
private CustomerService customerService;
@Autowired
private CartService cartService;

@RequestMapping("/cart/getCartId")
public String getCartId(Model model){
	System.out.println("hello world");
User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
String username=user.getUsername();
Customer customer=customerService.getCustomerByUsername(username);
Cart cart=customer.getCart();
int cartId=cart.getId();
/*List<CartItem> ls=cartItemService.getCartItems();*/
//Gson gs=new Gson();
//String st=gs.toJson(ls);
//System.out.println("st********"+st);
//model.addAttribute("ss",st);
/*System.out.println("ls********"+ls);*/
model.addAttribute("cartId",cartId);
return "cart";
}

@RequestMapping("/cart/getCart/{cartId}")
public @ResponseBody Cart getCart(@PathVariable int cartId){
	System.out.println("hai");
Cart cart=cartService.getCart(cartId);
//int c=cart.getId();
//List<CartItem> ls=cartItemService.getCartItems(c);
//Gson gs=new Gson();
//String st=gs.toJson(ls);
//System.out.println("st********"+st);
//model.addAttribute("cartId",st);
return cart;
}
}