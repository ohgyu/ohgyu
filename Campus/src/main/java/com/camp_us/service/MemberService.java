package com.camp_us.service;

import java.sql.SQLException;
import java.util.List;

import com.camp_us.dto.MemberVO;

public interface MemberService {

	// 회원목록
	List<MemberVO> list() throws SQLException;

	// 회원조회
	MemberVO getMember(String mem_id) throws SQLException;

	// 회원등록
	void regist(MemberVO accout) throws SQLException;

	// 회원수정
	void modify(MemberVO account) throws SQLException;

	// 회원삭제
	void remove(String mem_id) throws SQLException;

	// 권한수정
	void modifyAuthority(String mem_id, List<String> mem_auth) throws SQLException;

}