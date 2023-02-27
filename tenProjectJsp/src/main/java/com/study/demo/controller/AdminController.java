package com.study.demo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.demo.model.Product;
import com.study.demo.service.CategoryService;
import com.study.demo.service.ProductService;

@Controller
public class AdminController {

	
	@Autowired
	private ProductService pService;
	@Autowired
	private CategoryService cService;
	
//	private final /
	
	//admin dashboard page
	@GetMapping("/admin/dashBoard")
	public String adminDashBoard(){
		return "/admin/dashBoard";
	}
	//전체 리스트 출력 
	@GetMapping("/admin/productList")
	public ModelAndView adminProductList(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("/admin/productList");
		ArrayList<Product> list = (ArrayList<Product>)pService.AllProductFind();
		for(int i=0;i<list.size();i++){
			Product p = list.get(i);
		}
		mav.addObject("list",list);
		return mav;
	}
	//상품 개별로 보기 
	@GetMapping("/admin/productDetail")
	public String adminProductDetail(String p_idx,Model model) {
		System.out.println(p_idx);
		Product p = pService.ProductFind(p_idx);
		model.addAttribute("p",p);
		return "/admin/productEdit";
	}
	@PostMapping("/admin/productEdit")
	public String adminProductEdit(Product p,HttpServletRequest req) {
		pService.ProductEdit(p);
		return "redirect:/admin/productList";
	}
	//검색
	@GetMapping("/admin/productSearch")
	public ModelAndView productSearch(HttpServletRequest req,String p_name) {
		ModelAndView mav = new ModelAndView("/admin/productList");
		ArrayList<Product> list= (ArrayList<Product>)pService.ProductSearch(p_name);
		for(int i=0;i<list.size();i++){
			Product p = list.get(i);
		}
		mav.addObject("list",list);
		return mav;
	}
	//삭제 
	@PostMapping("/admin/productDeleteAll")
	public Object adminProductDeleteAll(HttpServletRequest req,String p_idx) {
		String[] arrStr = req.getParameterValues("p_idx");
		 if(arrStr !=null && arrStr.length > 0) {
	            for(int i=0; i<arrStr.length; i++) {
	            	pService.ProductDelete(arrStr[i]);
	            }
	            return "/admin/productList";
	       	}
		return null;
	}

}
