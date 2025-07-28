
package com.campUs.application;

import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.camp_us.dto.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations ={"classpath:com/camp_us/context/dataSource-context.xml",
						"classpath:com/camp_us/context/root-context.xml"})
@Transactional
public class TestSqlSession {

	@Autowired
	private SqlSession session;
	
	@Test
	public void testSelectMemberList() {
		List<MemberVO> memberList
		= session.selectList("Member-Mapper.selectMemberList");
		
		Assert.assertEquals(memberList.size(),2);
	}

	@Test
	public void testSelectMemberByID() {
		String targetID = "mimi";
		
		MemberVO member 
		= session.selectOne("Member-Mapper.selectMemberByID",targetID);
		
		Assert.assertEquals(targetID, member.getMem_id());
	}	
	@Test
	@Rollback
	public void testInsertMember() {
		MemberVO mockMember = new MemberVO();
		mockMember.setMem_id("kaka");
		mockMember.setMem_pass("kaka");
		mockMember.setMem_email("kaka@naver.com");
		mockMember.setMem_phone("010-1234-1347");
		mockMember.setMem_auth(Arrays.asList("student"));
		mockMember.setMem_add("대전ww아카데미");
		mockMember.setMem_name("kim");
		
		session.insert("Member-Mapper.insertMember",mockMember);
		
		MemberVO getMember 
		= session.selectOne("Member-Mapper.selectMemberByID",mockMember.getMem_id());
		
		Assert.assertEquals(mockMember.getMem_id(), getMember.getMem_id());
	}	
	@Test
	@Rollback
	public void testUpdateMember() {
		
		String id = "mimi";
		String chName = "nana";
		
		MemberVO getMember 
		= session.selectOne("Member-Mapper.selectMemberByID",id);
		getMember.setMem_name(chName);
		session.update("Member-Mapper.updateMember",getMember);
		
		getMember = session.selectOne("Member-Mapper.selectMemberByID",id);
		
		Assert.assertEquals(chName, getMember.getMem_name());
	}	
	@Test
	@Rollback
	public void testDeleteMember() {
		String id = "toto";
		
		MemberVO member 
		= session.selectOne("Member-Mapper.selectMemberByID",id);
		
		Assert.assertNotNull(member);
		
		session.delete("Member-Mapper.deleteMember",id);
		
		member = session.selectOne("Member-Mapper.selectMemberByID",id);
		
		Assert.assertNull(member);
		
	}
}





