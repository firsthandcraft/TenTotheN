package com.study.demo.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.demo.mapper.MemberMapper;
import com.study.demo.model.Member;


@Service
//@RequiredArgsConstructor
public class MemcerServiceImpl implements MemberService{

	
	@Autowired
	private MemberMapper mapper;

	@Override
	public void memberInsert(Member m) {
		// TODO Auto-generated method stub
		mapper.m_insert(m);
	}

	@Override
	public Member memberFind(String m_id) {
		// TODO Auto-generated method stub
		//System.out.println("id impl"+m_id);
		return mapper.m_select(m_id);
	
	}

	@Override
	public ArrayList<Member> AllmemberFind() {
		// TODO Auto-generated method stub
		return mapper.m_selectAll();
	}

	@Override
	public void memberEdit(Member m) {
		// TODO Auto-generated method stub
		mapper.m_update(m);
	}

	@Override
	public void memberDelete(String m_idx) {
		// TODO Auto-generated method stub
		mapper.m_delete(m_idx);
	}


	
		
}
