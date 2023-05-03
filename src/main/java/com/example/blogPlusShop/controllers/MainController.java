package com.example.blogPlusShop.controllers;

import com.example.blogPlusShop.models.User;
import com.example.blogPlusShop.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
@Controller
@RequiredArgsConstructor
public class MainController {
    private final UserService userService;

    @GetMapping("/")
    public String greeting(Model model) {
        model.addAttribute("title","Приветствие");
        return "greeting";
    }
    @GetMapping("/home")
    public String home(Principal principal, Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("title","Главная страница");
        return "home";
    }
    @GetMapping("/about")
    public String about(Principal principal, Model model) {
        User user = userService.getUserByPrincipal(principal);
        model.addAttribute("user", user);
        model.addAttribute("title","Об авторе");
        return "about";
    }

}
