package com.simplilearn.KitchenStory.dao;


import com.simplilearn.KitchenStory.entity.Product;
import com.simplilearn.KitchenStory.entity.User;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestParam;


@CrossOrigin("http://localhost:4200")
public interface UserRepository extends JpaRepository<User, Long> {

        Page<User> findByUsername(@RequestParam("username") String username, Pageable pageable);

}
