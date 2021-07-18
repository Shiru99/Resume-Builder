package io.fall;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    
    @RequestMapping("/")
    public String sayWelcome() {
        return "<h1>Welcome to Resume-Builder</h1>";
    }

    @RequestMapping("/edit")
    public String sayWelcomeAdmin() {
        return "<h1>Welcome to Resume-Builder, Resume-Owner</h1>";
    }
}