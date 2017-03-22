package com.fashion.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.model.Cart;
import com.fashion.model.CartItem;
@Repository
public class CartItemDaoImpl implements CartItemDao{
@Autowired
private SessionFactory sessionFactory;

@Transactional(propagation=Propagation.SUPPORTS)
public void addCartItem(CartItem cartItem) {
Session session=sessionFactory.openSession();
session.saveOrUpdate(cartItem);
session.flush();
session.close();	
}

@Transactional(propagation=Propagation.SUPPORTS)
public CartItem getCartItem(int cartItemId) {
Session session=sessionFactory.openSession();
CartItem cartItem=(CartItem)session.get(CartItem.class, cartItemId);
session.flush();
session.close();
return cartItem;
}

@Transactional(propagation=Propagation.SUPPORTS)
public void removeCartItem(CartItem cartItem) {
Session session=sessionFactory.openSession();
session.delete(cartItem);
session.flush();
session.close();

}

@Transactional(propagation=Propagation.SUPPORTS)
public void removeAllCartItems(Cart cart) {
List<CartItem> cartItems=cart.getCartItems();
//JDK 1.5 feature - for each loop
for(CartItem cartItem:cartItems){
removeCartItem(cartItem);
}

}

@Transactional(propagation=Propagation.SUPPORTS)
public List<CartItem> getCartItems() {
	Session session=sessionFactory.openSession();
	Query q=session.createQuery("from CartItem");
	
	List<CartItem> ls=q.list();
	return ls;
	
}

}