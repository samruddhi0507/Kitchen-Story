package com.simplilearn.KitchenStory.controller;



import com.simplilearn.KitchenStory.entity.Product;
import com.simplilearn.KitchenStory.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins= {"*"}, maxAge = 4800, allowCredentials = "false")
@RestController
@RequestMapping("/products")
public class ProductController {


    private ProductService productService;

    public ProductController(){

    }


    public ProductController(ProductService theProductService) {
        productService = theProductService;
    }


    @PostMapping("/save")
    public String saveEmployee(@ModelAttribute("product") Product theProduct) {

        // save the employee
        productService.save(theProduct);

        // use a redirect to prevent duplicate submissions
        return "redirect:/products";
    }

}
