package com.camp_us.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.camp_us.dto.MemberVO;

public class MemberDAOImpl implements MemberDAO{
	
	private SqlSession session;	
	public MemberDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MemberVO> selectMemberList() throws SQLException {
		
		return session.selectList("Member-Mapper.selectMemberList");
	}


	@Override
	public MemberVO selectMemberById(String mem_id) throws SQLException {
		return session.selectOne("Member-Mapper.selectMemberByID",mem_id);
	}

	@Override
	public void insertMember(MemberVO account) throws SQLException {
		session.insert("Member-Mapper.insertMember",account);	
	}

	@Override
	public void updateMember(MemberVO account) throws SQLException {
		session.update("Member-Mapper.updateMember",account);
		
	}

	@Override
	public void deleteMember(String mem_id) throws SQLException {
		session.delete("Member-Mapper.deleteMember",mem_id);
		
	}

	@Override
	public List<String> selectAuthoritiesById(String mem_id) throws SQLException {
		return session.selectList("Member-Mapper.selectAuthoritiesById",mem_id);
	}

	@Override
	public void insertAuthorities(String mem_id, int mem_auth) throws SQLException {
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("mem_id",mem_id);
		paramMap.put("mem_auth",mem_auth);
		session.insert("Member-Mapper.insertAuthorities",paramMap);	
	}

	@Override
	public void deleteAllAuthorityById(String id) throws SQLException {
		session.delete("Member-Mapper.deleteAllAuthorityById",id);	
	}

}
