package com.fashion.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fashion.dao.CartDao;
import com.fashion.model.Cart;

@Service
public class CartServiceImpl implements CartService{
@Autowired
private CartDao cartDao;
public Cart getCart(int cartId) {
return cartDao.getCart(cartId);
}

}