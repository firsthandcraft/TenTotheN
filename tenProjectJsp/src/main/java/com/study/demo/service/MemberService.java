package com.study.demo.service;

import java.util.ArrayList;

import com.study.demo.model.Member;

public interface MemberService {
	public void memberInsert (Member m);
	public ArrayList<Member> AllmemberFind ();
	public Member memberFind (String m_id);
	public void memberEdit (Member m);
	public void memberDelete(String m_id);
}