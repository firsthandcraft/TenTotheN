package com.study.demo.controller;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.study.demo.model.Category;
import com.study.demo.model.Product;
import com.study.demo.service.CategoryService;
import com.study.demo.service.ProductService;


@Controller
public class ProductController {
	
	@Autowired
	private ProductService pService;
	@Autowired
	private CategoryService cService;
	
	@GetMapping("/seller/productList")
	public ModelAndView sellerProductList(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("/seller/productList");
		ArrayList<Product> list = (ArrayList<Product>)pService.AllProductFind();
		//System.out.println(list);
		for(int i=0;i<list.size();i++){
			Product p = list.get(i);
		}
		mav.addObject("list",list);
		return mav;
	}
	@GetMapping("/seller/productAdd")
	public ModelAndView sellerProductAddForm(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("/seller/productAdd");
		ArrayList<Category> list = (ArrayList<Category>)cService.AllCategoryFind();
		for(int i=0;i<list.size();i++){
			Category c = list.get(i);
		}
		mav.addObject("list",list);
		return mav;
	}
	@PostMapping("/seller/productAdd")
	public String sellerProductAdd(Product p) {
		pService.ProductInsert(p);
		return "redirect:/seller/productList";
	}
	@GetMapping("/seller/productSearch")
	public ModelAndView productSearch(HttpServletRequest req,String p_name) {
		ModelAndView mav = new ModelAndView("/seller/productList");
		ArrayList<Product> list= (ArrayList<Product>)pService.ProductSearch(p_name);
//		System.out.println(list);
		for(int i=0;i<list.size();i++){
			Product p = list.get(i);
		}
		mav.addObject("list",list);
		return mav;
	}
	//삭제 
	@PostMapping("/seller/productDeleteAll")
	public Object sellerProductDeleteAll(HttpServletRequest req,String p_idx) {
		String[] arrStr = req.getParameterValues("p_idx");
		 if(arrStr !=null && arrStr.length > 0) {
	            for(int i=0; i<arrStr.length; i++) {
	            	pService.ProductDelete(arrStr[i]);
	            }
	            return "/seller/productList";
	       	}
		return null;
	}
	//edit
	@GetMapping("/seller/productDetail")
	public String productDetail(String p_idx,Model model) {
		//System.out.println(p_idx);
		Product p = pService.ProductFind(p_idx);
		System.out.println(p);
		model.addAttribute("p",p);
		return "/seller/productEdit";
	}
	@PostMapping("/seller/productEdit")
	public String sellerProductEdit(Product p,HttpServletRequest req) {
		pService.ProductEdit(p);
		return "redirect:/seller/productList";
	}
	
}
