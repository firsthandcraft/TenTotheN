package com.study.demo.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.demo.mapper.ProductMapper;
import com.study.demo.model.Product;
@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductMapper mapper;
	
	@Override
	public void ProductInsert(Product p) {
		// TODO Auto-generated method stub
		mapper.p_insert(p);
	}

	@Override
	public ArrayList<Product> AllProductFind() {
		// TODO Auto-generated method stub
		return mapper.p_selectAll();
	}

	@Override
	public Product ProductFind(String p_idx) {
		// TODO Auto-generated method stub
		return mapper.p_select(p_idx);
	}

	@Override
	public void ProductEdit(Product p) {
		// TODO Auto-generated method stub
		mapper.p_update(p);
	}

	@Override
	public void ProductDelete(String p_idx) {
		// TODO Auto-generated method stub
		mapper.p_delete(p_idx);
	}

	@Override
	public ArrayList<Product> ProductSearch(String p_name) {
		// TODO Auto-generated method stub
		return mapper.p_search(p_name);
	}

}
