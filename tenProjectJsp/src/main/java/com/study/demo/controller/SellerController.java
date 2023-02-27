package com.study.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SellerController {

	//admin dashboard page
	@GetMapping("/seller/dashBoard")
	public String sellerDashBoard(){
		return "seller/dashBoard";
	}
}
