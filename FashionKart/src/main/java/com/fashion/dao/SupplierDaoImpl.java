package com.fashion.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fashion.model.Supplier;
@Repository("supplierDao")
public class SupplierDaoImpl implements SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<Supplier> getSuppliers() {
		Session session=sessionFactory.openSession();
		Query query = session.createQuery("from Supplier");
		List<Supplier> suppliers=query.list();
		session.close();
		return suppliers;
	}

}
