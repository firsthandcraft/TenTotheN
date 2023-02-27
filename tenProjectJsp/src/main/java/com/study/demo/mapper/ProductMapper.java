package com.study.demo.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

import com.study.demo.model.Category;
import com.study.demo.model.Product;

@Mapper
public interface ProductMapper {
	public void p_insert(Product p);
	Product p_select(String p_idx);
	ArrayList<Product> p_selectAll();
	ArrayList<Product> p_search(String p_name);
	public void p_update(Product p);
	public void p_delete(String p_idx);
}
