package com.mudgal.musicstore.dao;

import java.util.List;

import com.mudgal.musicstore.model.Product;

public interface ProductDao {
	void addProduct(Product product);

	Product getProductById(String id);

	List<Product> getAllProduct();

	void deleteProduct(String id);

}
