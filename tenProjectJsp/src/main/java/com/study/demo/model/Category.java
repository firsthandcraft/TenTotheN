package com.study.demo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Category {
	private String c_idx;
	private String c_name;
	private String c_display;
	private String c_ageLimit;
}
