package com.study.demo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.demo.model.Member;
import com.study.demo.service.MemberService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController {
	
	@Autowired
	private final MemberService service;
	
	//login
	@GetMapping("/member/loginForm")
	public String loginForm() {
		return "/member/loginForm";
	}
	public void typeCheck() {
		
	}
	@PostMapping("/member/login")
	public String member_login(HttpServletRequest req, Member m,HttpSession session) {
		//HttpServletRequest req jsp에 있는 값을 가져오고 객체를 req객체를 생성하여 저장 
		Member m2 = service.memberFind(m.getM_id());
		
		if (m2 == null || !m2.getM_pwd().equals(m.getM_pwd())) {
			return "redirect:/member/loginForm";
		} else {
			session = req.getSession();
			session.setAttribute("m_id", m2.getM_id());
			session.setAttribute("m_type", m2.getM_type());
			if(m2.getM_type().equals("seller")) {
				return "redirect:/seller/dashBoard";
			}else if(m2.getM_type().equals("buyer")) {
				return "index";
			}else if(m2.getM_type().equals("admin")) {
				return "redirect:/admin/dashBoard";
			}
			return null;
		}
	}
	//join
	@GetMapping("/member/joinForm")
//	public String member_joinForm(HttpServletRequest req) {
	public String member_joinForm() {
//		HttpSession session = req.getSession();
//		session.setAttribute("idCheck", false);
		return "member/joinForm";
	}
	@PostMapping("/member/join")
	public String member_join(Member m) {
		service.memberInsert(m);
		return "member/loginForm";
	}

	//logout
	@GetMapping("/member/logout")
	public String member_logout(HttpServletRequest req){
		HttpSession session = req.getSession(false);
		session.removeAttribute("m_id");
		session.invalidate();
		return "/index";
	}
	//mypage buyer
	@GetMapping("/member/mypage")
	public String member_mypage() {
		return "/member/mypage";
	}
	
	//edit
	@GetMapping("/member/edit")
	public ModelAndView member_editForm(HttpServletRequest req){
		ModelAndView mav = new ModelAndView("member/editForm");
		HttpSession session = req.getSession(false);
		String m_id = (String)session.getAttribute("m_id");
		Member m = service.memberFind(m_id);
		mav.addObject("m", m);
		return mav;
	}
	@PostMapping("/member/edit")
	public String member_edit(HttpServletRequest req, Member m){
		service.memberEdit(m);
		HttpSession session = req.getSession(false);
		String m_type = (String)session.getAttribute("m_type");
		if(m_type.equals("seller")) {
			return "redirect:/seller/dashBoard";
		}else if(m_type.equals("buyer")) {
			return "index";
		}	
		return null;
	}
	
	//탈퇴
	@GetMapping("/member/out")
	public String out(HttpServletRequest req){
		HttpSession session = req.getSession(false);
		String m_id = (String)session.getAttribute("m_id");
		service.memberDelete(m_id);
		session.removeAttribute("m_id");
		session.invalidate();
		return "redirect:/index";//redect: 내 함수 다시 호출 
	}

	
//	@PostMapping("/member/idCheck")
//	public ModelAndView idCheck(HttpServletRequest req, 
//			@RequestParam(value = "id") String id) {
//		System.out.println(id);
//		HttpSession session = req.getSession(false);
//		ModelAndView mav = new ModelAndView("member/idCheck");
//		String result = "";
//		Member m = service.getMember(id);
//		if (m == null) {
//			result = "사용가능";
//			session.setAttribute("idCheck", true);
//		} else {
//			result = "사용불가능";
//			session.setAttribute("idCheck", false);
//		}
//		System.out.println(session.getAttribute("idCheck"));
//		mav.addObject("result", result);
//		return mav;
//	}
//	@GetMapping("/member/orderPage")
//	public String orderPage() {
//		return "member/orderPage";
//	}
//	@GetMapping("/member/prodPage")
//	public String prodPage() {
//		return "member/prodPage";
//	}
//	@GetMapping("/member/adminPage")
//	public String adminPage() {
//		
//		return "member/adminPage";
//	}
	
	
}
