package com.study.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.demo.model.Member;

@Mapper
public interface MemberMapper {
	public void m_insert (Member m);
	Member m_select(String id);
	ArrayList<Member> m_selectAll();
	public void m_update(Member m);
	public void m_delete(String id); 
}
