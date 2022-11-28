package com.enitec.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.enitec.service.UserService;
import com.enitec.vo.CustomerVo;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	UserService us;
	@GetMapping("/modify")
	public String pwCheck() {
		return "pwCheck";
	}

	@PostMapping("/modify")
	public String modifyUser(CustomerVo userVo, Model model)
	{
		CustomerVo customer = us.pwCheck(userVo.getC_id(), userVo.getC_pwd());
		if(customer.equals(null)) {
			return "redirect:/user/modify";
		}
		model.addAttribute("customer",customer);
		return "modifyForm";
	}

}
