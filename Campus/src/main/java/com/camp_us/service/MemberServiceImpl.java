package com.camp_us.service;

import java.sql.SQLException;
import java.util.List;

import com.camp_us.command.PageMaker;
import com.camp_us.dao.MemberDAO;
import com.camp_us.dto.MemberVO;



public class MemberServiceImpl implements MemberService {


	private MemberDAO memberDAO;

	public MemberServiceImpl(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
@Override
	public List<MemberVO> list() throws SQLException {
		List<MemberVO> memberList = memberDAO.selectMemberList();

		if (memberList != null)
			for (MemberVO member : memberList) {
				List<String> authorities = memberDAO.selectAuthoritiesById(member.getMem_id());
				member.setMem_auth(authorities);
			}
		
		return memberList;
	}

	@Override
	public MemberVO getMember(String mem_id) throws SQLException {
		MemberVO member = memberDAO.selectMemberById(mem_id);
		if (member != null)
			member.setMem_auth(memberDAO.selectAuthoritiesById(mem_id));
		return member;
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		
		memberDAO.insertMember(member);
		
		if (member.getMem_auth().size() > 0) {
			for (String authority : member.getMem_auth()) {
				memberDAO.insertAuthorities(member.getMem_id(),Integer.parseInt(authority));
			}
		}

	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		memberDAO.updateMember(member);
	}

	@Override
	public void remove(String id) throws SQLException {
		memberDAO.deleteMember(id);
	}

	@Override
	public void modifyAuthority(String id, List<String> authorities) throws SQLException {
		memberDAO.deleteAllAuthorityById(id);
		if(authorities.size()>0)for(String authority:authorities) {
			memberDAO.insertAuthorities(id,Integer.parseInt(authority));
		}
	}

}




