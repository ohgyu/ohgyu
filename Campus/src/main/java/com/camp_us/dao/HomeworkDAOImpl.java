package com.camp_us.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.camp_us.command.PageMaker;
import com.camp_us.dto.HomeworkVO;

@Repository
public class HomeworkDAOImpl implements HomeworkDAO {
	
private SqlSession session;
	
	public HomeworkDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<HomeworkVO> getHomeworkList(PageMaker pageMaker) throws SQLException {
	    int offset = pageMaker.getStartRow() - 1;
	    int limit = pageMaker.getPerPageNum();
	    RowBounds bounds = new RowBounds(offset, limit);

	    List<HomeworkVO> homeworkList =
	        session.selectList("Homework-Mapper.getHomeworkList", pageMaker, bounds); // ✅ 수정 완료

	    return homeworkList;
	}

	@Override
	public HomeworkVO getHomeworkByNo(String hwNo) {
		// TODO Auto-generated method stub
		return null;
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