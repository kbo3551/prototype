package com.pt.prototype.user.web;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Transactional
@Controller
public class LoginWeb {

    @GetMapping("/login")
    public String getUserLogin() {

        return "login";
    }

}
