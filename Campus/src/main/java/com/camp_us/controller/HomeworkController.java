package com.camp_us.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camp_us.command.PageMaker;
import com.camp_us.dto.HomeworkVO;
import com.camp_us.service.HomeworkService;


@Controller
@RequestMapping("")
public class HomeworkController {
	
private HomeworkService homeworkService;
	
	@Autowired
	public HomeworkController(HomeworkService homeworkService) {
		this.homeworkService = homeworkService;
	}
	
	  @GetMapping("/homeworklist")
	  public String studentslist(@ModelAttribute PageMaker pagemaker, Model model) throws Exception {
	      List<HomeworkVO> homeworkList = homeworkService.getHomeworkList(pagemaker);
	      System.out.println(homeworkList);
	      model.addAttribute("homeworklist", homeworkList);
	      return "homework/studentslist";
	  }
	
	@GetMapping("/homeworklist/detail")
	public String studentsdetail() {
		return "homework/studentsdetail";
	}
}