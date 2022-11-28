package com.enitec.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enitec.repasitory.CustomerRepository;
import com.enitec.vo.Customer;

@Service
public class RegisterService {
	@Autowired
	CustomerRepository cr;

	
	public Customer insertCustomer(Customer customer) {
		customer.setC_mailcheck("F");
		System.out.println(customer);
		return cr.save(customer);
	}
	public void updateMailCheck(String c_id) {
		Customer customer = new Customer();
		customer = cr.findById(c_id).get();
		customer.setC_mailcheck("T");
		cr.save(customer);
		System.out.println("mailCheck save");
	}
	public String login(Customer customer) {
		System.out.println(customer);
		String c_id = cr.login(customer.getC_id(), customer.getC_pwd());
		return c_id;
	}
	@Transactional
	public void compleMailCheck(String c_id) {
		cr.updateMailCheck(c_id);
	}
	public int checkIdDuplicated(String customer) {
		if(cr.findById(customer).orElse(null)==null)
		{
			return 0;
		}
		return 1;
	}
}
