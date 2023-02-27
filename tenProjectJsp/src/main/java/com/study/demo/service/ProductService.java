package com.study.demo.service;

import java.util.ArrayList;

import com.study.demo.model.Product;

public interface ProductService {
	public void ProductInsert(Product p);
	public ArrayList<Product> AllProductFind();
	public ArrayList<Product> ProductSearch(String p_name);
	public Product ProductFind(String p_idx);
	public void ProductEdit(Product p);
	public void ProductDelete(String p_idx);
}
