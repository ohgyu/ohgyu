package com.camp_us.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import com.camp_us.command.PageMaker;
import com.camp_us.dao.HomeworkDAO;
import com.camp_us.dto.HomeworkVO;

@Service
public class HomeworkServiceImpl implements HomeworkService {

	private HomeworkDAO homeworkDAO;
	private String summernotePath;

	public HomeworkServiceImpl(HomeworkDAO homeworkDAO, String summernotePath) {
	    this.summernotePath = summernotePath;
	    this.homeworkDAO = homeworkDAO;
	}

	@Override
	public List<HomeworkVO> getHomeworkList(PageMaker pageMaker) throws SQLException {
	    List<HomeworkVO> homeworkList = homeworkDAO.getHomeworkList(pageMaker);

	    return homeworkList;
	}
	
	
	@Override
	public HomeworkVO getHomeworkByNo(String hwNo) throws SQLException {
	    return homeworkDAO.getHomeworkByNo(hwNo);
	}

	@Override
	public void insertHomework(HomeworkVO homework) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateHomework(HomeworkVO homework) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteHomework(String hwNo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<HomeworkVO> getStudentHomeworkList(String studentId) {
		// TODO Auto-generated method stub
		return null;
	}




	
}