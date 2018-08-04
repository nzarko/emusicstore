package com.emusicstore.controller;


import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.jws.WebParam;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(@RequestParam(value = "error", required = false)String error,
                        @RequestParam(value = "logout", required = false)String logout, Model model)
    {
        if(error != null ) {
            model.addAttribute("error", "Invalid username or password!");
        }

        if(logout != null) {
            model.addAttribute("msg", "You have been logged out successfully!");
        }

        return "login";
    }
}
