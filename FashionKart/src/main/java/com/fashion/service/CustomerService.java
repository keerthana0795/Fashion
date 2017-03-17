package com.fashion.service;

import com.fashion.model.Customer;

public interface CustomerService {
void saveCustomer(Customer customer);
public Customer getCustomerByUsername(String username);
}