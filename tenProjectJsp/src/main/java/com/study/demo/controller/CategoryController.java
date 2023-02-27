package com.study.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.demo.model.Category;
import com.study.demo.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService service;
	
	@GetMapping("/admin/category")
	public ModelAndView adminCategory(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("/admin/category");
		ArrayList<Category> list = (ArrayList<Category>)service.AllCategoryFind();
		for(int i=0;i<list.size();i++){
			Category c = list.get(i);
		}
		mav.addObject("list",list);
		return mav;
	}
	@PostMapping("/admin/categoryAdd")
	public String categoryAdd(Category c) {
		service.CategoryInsert(c);
		return "redirect:/admin/category";
	}
	@PostMapping("/admin/categoryDelete")
	public String categoryDelete(String c_idx) {
		service.CategoryDelete(c_idx);
		return "redirect:/admin/category";
	}
	@PostMapping("/admin/categoryDeleteAll")
	public Object categoryDeleteAll(HttpServletRequest req,String c_idx) {
		String[] arrStr = req.getParameterValues("c_idx");
		 if(arrStr !=null && arrStr.length > 0) {
	            for(int i=0; i<arrStr.length; i++) {
	               service.CategoryDelete(arrStr[i]);
	            }
	            return "/admin/category";
	       	}
	//
		return null;
	}
	@PostMapping("/admin/categoryEdit")
	public String categoryEdit(HttpServletRequest req,Category c) {
		//System.out.println(c);
		service.CategoryEdit(c);
		return "admin/category";
	}
	@GetMapping("/admin/categorySearch")
	public ModelAndView categorySearch(HttpServletRequest req,String c_name) {
		ModelAndView mav = new ModelAndView("/admin/category");
		ArrayList<Category> list= (ArrayList<Category>)service.CategoryFind(c_name);
		System.out.println(list);
		for(int i=0;i<list.size();i++){
			Category c = list.get(i);
		}
		mav.addObject("list",list);
		return mav;
		//return null;
	}
	
//	@GetMapping("/admin/edit")
//	public ModelAndView admin_editForm(HttpServletRequest req){
////		ModelAndView mav = new ModelAndView("member/editForm");
////		HttpSession session = req.getSession(false);
////		String m_id = (String)session.getAttribute("m_id");
////		Member m = service.memberFind(m_id);
////		System.out.println("edit:"+m);
////		mav.addObject("m", m);
////		return mav;
//		return "";
//	}
	/*@RequestMapping("/product/delete")
	private String deleteProduct(@RequestParam int product_num) {
		String user_id = (String) session.getAttribute("user_id");
		int user_type = (int) session.getAttribute("user_type");
		Product p = pService.getProduct(product_num);
		if (user_id.equals(p.getUser_id()) || user_type == 2) {
			pService.deleteProduct(product_num);
			return "redirect:/product/list";
		} else {
			return "redirect:/member/login";
		}
	}*/
	
}
