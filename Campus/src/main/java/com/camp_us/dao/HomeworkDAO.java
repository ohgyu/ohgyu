package com.camp_us.dao;

import java.sql.SQLException;
import java.util.List;

import com.camp_us.command.PageMaker;
import com.camp_us.dto.HomeworkVO;

public interface HomeworkDAO {

	
    // 전체 과제 목록 조회
	List<HomeworkVO> getHomeworkList(PageMaker pageMaker) throws SQLException;

    // 과제 상세 조회
    HomeworkVO getHomeworkByNo(String hwNo);

    // 과제 등록
    void insertHomework(HomeworkVO homework);

    // 과제 수정
    void updateHomework(HomeworkVO homework);

    // 과제 삭제
    void deleteHomework(String hwNo);

    // 학생 전용: 수강 중인 과제 목록 조회
    List<HomeworkVO> getStudentHomeworkList(String studentId);
}