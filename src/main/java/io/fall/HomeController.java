package io.fall;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    
    @RequestMapping("/")
    public String sayWelcome() {
        return "<h1>Welcome to Resume-Builder</h1>";
    }

    @RequestMapping("/admin")
    public String sayWelcomeAdmin() {
        return "<h1>Welcome to Resume-Builder, Admin</h1>";
    }

    @RequestMapping("/user")
    public String sayWelcomeUser() {
        return "<h1>Welcome to Resume-Builder, User</h1>";
    }
}
