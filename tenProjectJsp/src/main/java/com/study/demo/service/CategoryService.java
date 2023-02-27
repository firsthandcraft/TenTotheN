package com.study.demo.service;

import java.util.ArrayList;

import com.study.demo.model.Category;


public interface CategoryService {

	public void CategoryInsert(Category c);
	public ArrayList<Category> AllCategoryFind ();
	public ArrayList<Category> CategoryFind (String c_name);
	public void CategoryEdit (Category c);
	public void CategoryDelete(String c_idx);
}
