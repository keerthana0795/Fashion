package com.fashion.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.dao.CartItemDao;
import com.fashion.model.CartItem;
@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
private CartItemDao cartItemDao;
	public void addCartItem(CartItem cartItem) {
	  cartItemDao.addCartItem(cartItem);
		
	}

}