package com.enitec.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.enitec.vo.CustomerVo;


@Controller
public class HomeController {
	@GetMapping("/")
	public String home() {
		System.out.println("hi");
		return "index";
	}
}
