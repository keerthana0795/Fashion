package com.fashion.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.dao.CustomerDao;
import com.fashion.model.Customer;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	
	@Autowired
	private CustomerDao customerDao;
	
	@Transactional(propagation=Propagation.SUPPORTS)
		public void saveCustomer(Customer customer) {
			customerDao.saveCustomer(customer);
		}

}
