package com.fashion.dao;
import org.hibernate.Query;
/*import org.apache.log4j.Logger;*/
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.fashion.model.Authorities;
import com.fashion.model.Cart;
import com.fashion.model.Customer;
import com.fashion.model.Users;

@Repository("customerDao")
public class CustomerDaoImpl implements CustomerDao{
	
	@Autowired
private SessionFactory sessionFactory;
	//Logger logger=Logger.getLogger(CustomerDaoImpl.class);//
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public void saveCustomer(Customer customer) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		//logger.debug("===========================================================================");//
		//child tables - Users, billingAddress,ShippingAddresss
		customer.getUsers().setEnabled(true);
		
		//Assignment
		String username=customer.getUsers().getUsername();
		String role="ROLE_USER";
		
		Authorities authorities=new Authorities();
		//set the values
		
		authorities.setUsername(username);
		authorities.setRole(role);
		
		session.save(authorities);  //insert into authorities values (?,?,'Role_USER');
		
		Cart cart=new Cart();
		customer.setCart(cart);
		
		cart.setCustomer(customer);//update cart set customer_id=? , grandtotal=? where cart_id=?
		
		
		session.save(customer);
		
		//logger.debug("==========================================================================");//
		
		
		session.getTransaction().commit();
		session.flush();
		session.close();		
	}
	public Customer getCustomerByUsername(String username) {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Users where username=?");
		query.setString(0, username);
		Users users=(Users)query.uniqueResult(); 
		Customer customer=users.getCustomer();
		session.close();
		return customer;
		
	}
}