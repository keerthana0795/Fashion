package com.fashion.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.model.Signup;

@Repository("SignupDao")
public class SignupDaoImpl implements SignupDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Signup sup) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(sup);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(sup);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Signup> getList() {
		Session session = sessionFactory.openSession();
		  //@SuppressWarnings("unchecked")
		  List<Signup> signupList = session.createQuery("from Signup").list();
		  session.close();
		  return signupList;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Signup getRowById(int id) {
		 Session session = sessionFactory.openSession();
		  Signup s = (Signup) session.load(Signup.class, id);
		  return s;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Signup sup) {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(sup);
		  session.flush();
		  tx.commit();
		  
		  Serializable id = session.getIdentifier(sup);
		  session.close();
		  return (Integer) id;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  Signup s = (Signup) session.load(Signup.class, id);
		  session.delete(s);
		  session.flush();
		  tx.commit();
		 
		  Serializable ids = session.getIdentifier(s);
		  session.close();
		  return (Integer) ids;
	}

	public int insertRow1(Signup sup) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateRow1(Signup sup) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}