package com.example.blogPlusShop.controllers;

import com.example.blogPlusShop.models.Post;
import com.example.blogPlusShop.models.User;
import com.example.blogPlusShop.services.PostService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class PostController {
    @Autowired
    private PostService postService;
    @GetMapping("/blog")
    public String blogMain(String title, Principal principal, Model model) {
        model.addAttribute("user", postService.getUserByPrincipal(principal));
        model.addAttribute("posts", postService.listPosts(title));
        model.addAttribute("title", title);
        return "blog-main";
    }

    @GetMapping("/blogAdd")
    public String addArticle(Principal principal, Model model) {
        model.addAttribute("user", postService.getUserByPrincipal(principal));
        return "blog-add";
    }

    @PostMapping("/blogAdd")
    public String addPostArticle(@RequestParam String title,
                                 @RequestParam String anons,
                                 @RequestParam String fullText,
                                 Post post, Principal principal,
                                 Model model) throws IOException {
        model.addAttribute("user", postService.getUserByPrincipal(principal));
        postService.savePost(principal, post, title, anons, fullText);
        return "redirect:/blog";
    }

    @GetMapping("/blog/{id}")
    public String openArticle(@PathVariable Long id, Model model, Principal principal) {
        Post post = postService.getPostById(id);
        model.addAttribute("user", postService.getUserByPrincipal(principal));
        model.addAttribute("post", post);
        model.addAttribute("authorPost", post.getUser());
        return "blog-article";
    }

    @GetMapping("/post/edit/{id}")
    public String editArticle(@PathVariable Long id, Model model, Principal principal) {
        Post post = postService.getPostById(id);
        model.addAttribute("user", postService.getUserByPrincipal(principal));
        model.addAttribute("post", post);
        return "blog-edit";
    }

    @PostMapping("/post/edit/{id}")
    public String updatePostArticle(@PathVariable Long id,
                                    @RequestParam(name = "title") String title,
                                    @RequestParam(name = "anons") String anons,
                                    @RequestParam(name = "fullText") String fullText,
                                    Model model, Principal principal) throws IOException {
        Post post = postService.getPostById(id);
        postService.savePost(principal, post, title, anons, fullText);
        return "redirect:/blog";
    }

    @PostMapping("/post/delete/{id}")
    public String deletePost(@PathVariable Long id, Principal principal) {
        postService.deletePost(postService.getUserByPrincipal(principal), id);
        return "redirect:/my/posts";
    }

    @GetMapping("/my/posts")
    public String userPosts(Principal principal, Model model) {
        User user = postService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("posts", user.getPosts());
        return "my-posts";
    }

}
