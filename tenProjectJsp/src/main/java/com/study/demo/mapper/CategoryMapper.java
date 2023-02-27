package com.study.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.demo.model.Category;

@Mapper
public interface CategoryMapper {
	public void c_insert(Category c);
	ArrayList<Category> c_select(String c_name);
	ArrayList<Category> c_selectAll();
	public void c_update(Category c);
	public void c_delete(String c_idx);
}
