package com.enitec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enitec.repasitory.CustomerRepository;
import com.enitec.vo.Customer;

@Service
public class CustomerService {
	@Autowired
	CustomerRepository cr;

	public Customer getCustomerInfo(String c_id) {
		return cr.findById(c_id).get();
	}

	public Customer modifyUser(Customer customer) {
		System.out.println(customer);
		return cr.save(customer);
	}

	public Customer pwCheck(String c_id, String c_pwd) {
		Customer customer = new Customer();
		customer = cr.findById(c_id).get();
		if (customer.getC_pwd().equals(c_pwd)) {
			return customer;
		}
		return null;
	}

	public String getMembershipCode(String c_id) {
		return cr.findMembershipCode(c_id);

	}

}
