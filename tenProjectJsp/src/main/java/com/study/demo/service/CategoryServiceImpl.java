package com.study.demo.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.demo.mapper.CategoryMapper;
import com.study.demo.model.Category;
@Service
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryMapper mapper;
	@Override
	public void CategoryInsert(Category c) {
		// TODO Auto-generated method stub
		mapper.c_insert(c);
	}

	@Override
	public ArrayList<Category> AllCategoryFind() {
		// TODO Auto-generated method stub
		return mapper.c_selectAll();
	}

	
	@Override
	public void CategoryEdit(Category c) {
		// TODO Auto-generated method stub
		mapper.c_update(c);
	}

	@Override
	public void CategoryDelete(String c_idx) {
		// TODO Auto-generated method stub
		mapper.c_delete(c_idx);
	}

	@Override
	public ArrayList<Category> CategoryFind(String c_name) {
		// TODO Auto-generated method stub
		return mapper.c_select(c_name);
	}


}
