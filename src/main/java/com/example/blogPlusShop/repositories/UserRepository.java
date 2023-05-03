package com.example.blogPlusShop.repositories;

import com.example.blogPlusShop.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
