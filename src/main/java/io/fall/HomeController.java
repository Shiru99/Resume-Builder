package io.fall;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// @RestController // rest controller - JSON only
@Controller
public class HomeController {
    
    @RequestMapping("/")
    public String sayWelcome() {
        return "<h1>Welcome to Resume-Builder</h1>";
    }

    @RequestMapping("/edit")
    public String sayWelcomeAdmin() {
        return "<h1>Welcome to Resume-Builder, Resume-Owner</h1>";
    }

    @GetMapping("/view/{userId}")
    public String viewProfile(@PathVariable String userId, Model model){
        model.addAttribute("userId", userId);
        return "profile-templates/3/index";
    }
}