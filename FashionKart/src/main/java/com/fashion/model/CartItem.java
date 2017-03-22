
package com.fashion.model;

import java.io.Serializable;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;
@Entity
public class CartItem implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
private int quantity;
private double totalPrice;

@ManyToOne           
@JoinColumn(name="product_id")
private Product product;

@ManyToOne
@JsonIgnore
@JoinColumn(name="cart_id")
private Cart cart;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}

public double getTotalPrice() {
	return totalPrice;
}

public void setTotalPrice(double totalPrice) {
	this.totalPrice = totalPrice;
}

public Product getProduct() {
	return product;
}

public void setProduct(Product product) {
	this.product = product;
}

public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

}