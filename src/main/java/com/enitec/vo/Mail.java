package com.enitec.vo;

import lombok.Data;

@Data
public class Mail {
	private String recipient;
	private String subject;
	private String text;
}
