package com.example.blogPlusShop.services;

import com.example.blogPlusShop.models.Post;
import com.example.blogPlusShop.models.User;
import com.example.blogPlusShop.repositories.PostRepository;
import com.example.blogPlusShop.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class PostService {
    private final PostRepository postRepository;
    private final UserRepository userRepository;

    public List<Post> listPosts(String title) {
        if (title != null) return postRepository.findByTitle(title);
        return postRepository.findAll();
    }
    public void savePost(Principal principal, Post post, String title, String anons, String fullText) throws IOException {
        post.setUser(getUserByPrincipal(principal));
        post.setTitle(title);
        post.setAnons(anons);
        post.setFullText(fullText);
        postRepository.save(post);
    }
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }
    public void deletePost(User user, Long id) {
        Post post = postRepository.findById(id)
                .orElse(null);
        if (post != null) {
            if (post.getUser().getId().equals(user.getId())) {
                postRepository.delete(post);
                log.info("Post with id = {} was deleted", id);
            } else {
                log.error("User: {} haven't this product with id = {}", user.getEmail(), id);
            }
        } else {
            log.error("Post with id = {} is not found", id);
        }
    }
    public Post getPostById(Long id) {
        return postRepository.findById(id).orElse(null);
    }

}
