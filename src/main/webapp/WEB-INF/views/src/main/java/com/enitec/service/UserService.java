package com.enitec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.enitec.repasitory.CustomerRepository;
import com.enitec.vo.CustomerVo;

@Service
public class UserService {
	@Autowired
	CustomerRepository customerRepositry;
	CustomerVo customer = new CustomerVo();
	public void modifyUser()
	{
		
	}
	public CustomerVo pwCheck(String c_id, String c_pwd)
	{
		
		customer = customerRepositry.findById(c_id).get();
		if(customer.getC_pwd().equals(c_pwd)) {
			return customer;
		}
		return null;
		
	}
}
