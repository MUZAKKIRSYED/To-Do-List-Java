package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import com.model.Users;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String home() {
		return "login";
	}
	@RequestMapping("logintest")
	public String log(@ModelAttribute Users u,Model m) {
		if(u.getEmail().equals("randomperson@gmail.com") && u.getPass().equalsIgnoreCase("Qwerty@2")) {
			m.addAttribute("u",u+" Valid User");
			return "success";
		}
		m.addAttribute("u",u+"Invalid User");
		return "error";
	}
}
