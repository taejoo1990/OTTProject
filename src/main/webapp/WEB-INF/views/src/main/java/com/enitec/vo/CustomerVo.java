package com.enitec.vo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="customer")
public class CustomerVo {
	@Id
	private String c_id;
	private String c_name;
	private String c_pwd;
	private String c_mail;
	private boolean c_mailcheck;
	private String c_birth;
	private String c_phone;
	private String m_start_date;
	private String m_end_date;
	private String c_auth;	
	
	public CustomerVo() {
		
	}
	
}
