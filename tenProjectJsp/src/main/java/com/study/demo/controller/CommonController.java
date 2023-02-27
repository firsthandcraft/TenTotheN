package com.study.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.demo.model.Member;
import com.study.demo.model.Product;
import com.study.demo.service.MemberService;
import com.study.demo.service.ProductService;

@Controller
public class CommonController {
	
	@Autowired
	private ProductService pService;
	private MemberService mService;
	
	@GetMapping("/common/about")
	public String commonAbout() {
		return "/common/about";
	}

	@GetMapping("/common/productList")
	public ModelAndView commonProductList(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("/common/productList");
		ArrayList<Product> pList = (ArrayList<Product>)pService.AllProductFind();
		for(int i=0;i<pList.size();i++){
			Product p = pList.get(i);
		}
		mav.addObject("pList",pList);
		return mav;
	}
	@GetMapping("/common/productDetail")
	public String commonProductDetail(String p_idx,Model model) {
//		System.out.println(p_idx);
		Product p = pService.ProductFind(p_idx);
		model.addAttribute("p",p);
		return "/common/productDetail";
	}
	
}
