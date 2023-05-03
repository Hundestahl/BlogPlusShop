package com.example.blogPlusShop.repositories;

import com.example.blogPlusShop.models.Post;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PostRepository extends JpaRepository<Post, Long> {
    List<Post> findByTitle(String title);

}
