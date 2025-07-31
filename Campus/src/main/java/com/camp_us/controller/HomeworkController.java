package com.camp_us.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camp_us.command.PageMaker;
import com.camp_us.dto.HomeworkVO;
import com.camp_us.service.HomeworkService;

@Controller
@RequestMapping("/homeworklist")  // ✅ 모든 경로는 /homeworklist 로 시작
public class HomeworkController {

    private final HomeworkService homeworkService;

    @Autowired
    public HomeworkController(HomeworkService homeworkService) {
        this.homeworkService = homeworkService;
    }

    // 과제 목록 조회 → /homeworklist
    @GetMapping("")
    public String studentslist(@ModelAttribute PageMaker pagemaker, Model model) throws Exception {
        List<HomeworkVO> homeworkList = homeworkService.getHomeworkList(pagemaker);
        model.addAttribute("homeworklist", homeworkList);
        return "homework/studentslist";
    }

    // 과제 상세 조회 → /homeworklist/detail?hwNo=HW001
    @GetMapping("/detail")
    public String studentsdetail(@RequestParam("hwNo") String hwNo, Model model)throws Exception {
        HomeworkVO homework = homeworkService.getHomeworkByNo(hwNo);
        System.out.println("받아온 과제 정보: " + homework);
        model.addAttribute("homework", homework);
        return "homework/studentsdetail";
    }
}