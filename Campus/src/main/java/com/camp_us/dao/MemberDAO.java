package com.camp_us.dao;

import java.sql.SQLException;
import java.util.List;

import com.camp_us.dto.MemberVO;

public interface MemberDAO {


	List<MemberVO> selectMemberList()throws SQLException;
	
	
	MemberVO selectMemberById(String mem_id)throws SQLException;
	void insertMember(MemberVO member)throws SQLException;
	void updateMember(MemberVO member)throws SQLException;
	void deleteMember(String mem_id)throws SQLException;	
	

	List<String> selectAuthoritiesById(String mem_id)throws SQLException;
	void insertAuthorities(String mem_id, int ano)throws SQLException;
	void deleteAllAuthorityById(String mem_id)throws SQLException;
}





