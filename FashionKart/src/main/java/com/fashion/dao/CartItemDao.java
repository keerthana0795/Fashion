package com.fashion.dao;

import java.util.List;

import com.fashion.model.Cart;
import com.fashion.model.CartItem;

public interface CartItemDao {
void addCartItem(CartItem cartItem);
CartItem getCartItem(int cartItemId);
void removeCartItem(CartItem cartItem);
void removeAllCartItems(Cart cart);
public List<CartItem> getCartItems();
}