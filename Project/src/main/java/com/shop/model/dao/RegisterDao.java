package com.shop.model.dao;

import java.util.List;

import com.shop.model.entity.Register;


public interface RegisterDao {
	public void add(Register register);
	public void edit(Register register);
	
	public List getAllRegister();
}
