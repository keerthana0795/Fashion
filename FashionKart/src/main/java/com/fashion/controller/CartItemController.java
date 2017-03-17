package com.fashion.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.fashion.model.Cart;
import com.fashion.model.CartItem;
import com.fashion.model.Customer;
import com.fashion.model.Product;
import com.fashion.service.CartItemService;
import com.fashion.service.CartService;
import com.fashion.service.CustomerService;
import com.fashion.service.ProductService;

@Controller
public class CartItemController {
	
public CartItemController() {
		//super();
		// TODO Auto-generated constructor stub
	System.out.println("Inside the cartItem Controller");
	}
@Autowired
private CartItemService cartItemService;
@Autowired
private CustomerService customerService;
@Autowired
private ProductService productService;
@Autowired
private CartService cartService;

@RequestMapping("/cart/addCartItem/{pid}")
//@ResponseStatus(value=HttpStatus.NO_CONTENT)
public void addCartItem(@PathVariable(value="pid") int productId){
	System.out.println("add product in cart**************************");
User user=(User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();

String username=user.getUsername();
System.out.println("getting username****************************************");
Customer customer=customerService.getCustomerByUsername(username);//from Users where username=?
System.out.println("Username:"+username);
System.out.println("going to get cartid***************************************************");
Cart cart=customer.getCart();
System.out.println("gets cartid******************************************************");
List<CartItem> cartItems= cart.getCartItems();

Product product = productService.getProductById(productId);

for (int i = 0; i <cartItems.size(); i++) {
	System.out.println("inside the for loop*********************************************************");
CartItem cartItem=cartItems.get(i);
Product p=cartItem.getProduct();
System.out.println("Fetched Product ID:******************************"+p);
System.out.println("user productId***************************************:"+productId);
System.out.println("getting product id**************************************************");
//1 == 1
if(p.getId()==productId){
	System.out.println("inside the if condition*****************************************************************************");
	System.out.println("Quantity iside loop****************************************************************************:"+cartItem.getQuantity());
cartItem.setQuantity(cartItem.getQuantity() + 1);//increment the quantity
System.out.println("after updateion Quantity iside loop*****************************************************:"+cartItem.getQuantity());
System.out.println("quantity updated*********************************************************************************");
System.out.println("Price iside loop********************************************************************:"+p.getPrice());
cartItem.setTotalPrice(cartItem.getQuantity() * p.getPrice()); //update the total price

System.out.println("price update*************************************************************************d"+p.getPrice());
cartItemService.addCartItem(cartItem);//update the quantity in the cartitem
System.out.println("table updated****************************************************************");
return;
}	
}

System.out.println("outside the for loop cartitem*********************************************");
CartItem cartItem=new CartItem();
System.out.println("Quantity outside loop****************************************************************:"+cartItem.getQuantity());
cartItem.setQuantity(1);
System.out.println("outside loop quantity updated************************************************************"+cartItem.getQuantity());
System.out.println("Price Outside loop*****************************************************:"+product.getPrice());
cartItem.setTotalPrice(cartItem.getQuantity() * product.getPrice());
System.out.println("outside loop priceis updated*******************************************************:"+product.getPrice());
cartItem.setProduct(product); //set product id
cartItem.setCart(cart);//set cart id
System.out.println("cart id is fetched outside loop*****************************************************");
cartItemService.addCartItem(cartItem); //insert query
System.out.println("outside the for loop cartItem is updated****************************************************************");
}

@RequestMapping("/cart/removeCartItem/{cartItemId}")
@ResponseStatus(value=HttpStatus.NO_CONTENT)
public void removeCartItem(@PathVariable int cartItemId){
	System.out.println("out of the box");
CartItem cartItem=cartItemService.getCartItem(cartItemId);
cartItemService.removeCartItem(cartItem);
}
@RequestMapping("/cart/removeAllCartItems/{cartId}")
@ResponseStatus(value=HttpStatus.NO_CONTENT)
public void removeAllCartItems(@PathVariable int cartId){
	System.out.println("happy days");
Cart cart=cartService.getCart(cartId);
cartItemService.removeAllCartItems(cart);
}
}

