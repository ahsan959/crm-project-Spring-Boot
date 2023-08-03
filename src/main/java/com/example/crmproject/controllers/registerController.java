package com.example.crmproject.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class registerController
{
    @RequestMapping("/registerForm")
    public String register()
    {

        return "employee-list";
    }
}
