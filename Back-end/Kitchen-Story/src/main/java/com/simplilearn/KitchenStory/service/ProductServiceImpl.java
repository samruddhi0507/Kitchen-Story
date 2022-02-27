package com.simplilearn.KitchenStory.service;

import com.simplilearn.KitchenStory.dao.ProductRepository;
import com.simplilearn.KitchenStory.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin("http://localhost:4200")
public class ProductServiceImpl implements ProductService {

    private ProductRepository productRepository;

    @Autowired
    public ProductServiceImpl(ProductRepository theProductRepository) {

        productRepository = theProductRepository;
    }



    @Override
    public void save(Product theProduct) {
        productRepository.save(theProduct);
    }
}
