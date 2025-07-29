package com.camp_us.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("")
public class ProfessorHomeworkController {

	@GetMapping("/prohomeworklist")
	public String starter() {
		return "homework/professorlist";
	}
	
	@GetMapping("/prohomeworklist/register")
	public String register() {
		return "homework/register";
	}
	
	@GetMapping("/homework/detail")
	public String detail() {
	    return "homework/professordetail";
	}
}