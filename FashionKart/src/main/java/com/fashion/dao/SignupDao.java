package com.fashion.dao;

import java.util.List;

import com.fashion.model.Signup;

public interface SignupDao {

	public int insertRow(Signup sup);

	 public List<Signup> getList();

	 public Signup getRowById(int id);

	 public int updateRow(Signup sup);

	 public int deleteRow(int id);

}