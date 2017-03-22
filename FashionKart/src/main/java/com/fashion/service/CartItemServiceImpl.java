package com.fashion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.dao.CartItemDao;
import com.fashion.model.Cart;
import com.fashion.model.CartItem;
@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
private CartItemDao cartItemDao;
	
	
@Transactional(propagation=Propagation.SUPPORTS)
	public void addCartItem(CartItem cartItem) {
	  cartItemDao.addCartItem(cartItem);
		
	}

@Transactional(propagation=Propagation.SUPPORTS)
	public CartItem getCartItem(int cartItemId) {
	  return cartItemDao.getCartItem(cartItemId);
			
	}

@Transactional(propagation=Propagation.SUPPORTS)
	public void removeCartItem(CartItem cartItem) {
	  cartItemDao.removeCartItem(cartItem);
					
	}

@Transactional(propagation=Propagation.SUPPORTS)
	public void removeAllCartItems(Cart cart) {
	  cartItemDao.removeAllCartItems(cart);
						
	}	
	
/*@Transactional(propagation=Propagation.SUPPORTS)
	public List<CartItem> getCartItems() {
		// TODO Auto-generated method stub
		return cartItemDao.getCartItems();
	}*/
}