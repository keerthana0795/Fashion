package com.fashion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.fashion.dao.SignupDao;
import com.fashion.model.Signup;

@Service("signupService")

public class SignupServiceImpl implements SignupService {
	
	@Autowired
	private SignupDao SignupDao;

	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow1(Signup sup) {
		// TODO Auto-generated method stub
		return SignupDao.insertRow(sup);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List getList() {
		// TODO Auto-generated method stub
		return SignupDao.getList();
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public Signup getRowById1(int id) {
		// TODO Auto-generated method stub
		return SignupDao.getRowById(id);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow1(Signup sup) {
		// TODO Auto-generated method stub
		return SignupDao.updateRow(sup);
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return SignupDao.deleteRow(id);
	}

	public int insertRow(Signup sup) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Signup getRowById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public int updateRow(Signup sup) {
		// TODO Auto-generated method stub
		return 0;
	}
	}