package com.example.blogPlusShop.repositories;

import com.example.blogPlusShop.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
