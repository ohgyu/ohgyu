package com.camp_us.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class HomeworkController {

	@GetMapping("/homeworklist")
	public String starter() {
		return "homework/studentslist";
	}
	
}