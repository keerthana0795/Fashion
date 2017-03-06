package com.fashion.dao;

import com.fashion.model.Customer;

public interface CustomerDao {
	void saveCustomer(Customer customer);
	Customer getCustomerByUsername(String username);
}
