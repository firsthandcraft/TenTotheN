package com.study.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
	private String p_idx;
	private String p_category;
	private String p_name;
	private String p_img;
	private String p_content;
	private String p_display;
	private String p_quantity;
	private String p_price;
	private String p_ageLimit;
	private String p_option;
	private String p_optionPrice;
	private String p_permission;
	private String p_permissionReason;
}
