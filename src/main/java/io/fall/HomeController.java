package io.fall;

import java.util.Optional;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import io.fall.model.UserProfile;
import io.fall.model.UserProfileRepository;

// @RestController // rest controller - JSON only
@Controller
public class HomeController {

    @Autowired
    UserProfileRepository userProfileRepository;
    
    @RequestMapping("/")
    public String sayWelcome() {
        return "<h1>Welcome to Resume-Builder</h1>";
    }

    @RequestMapping("/edit")
    public String sayWelcomeAdmin() {
        return "<h1>Welcome to Resume-Builder, Resume-Owner</h1>";
    }

    @GetMapping("/view/{username}")
    public String viewProfile(@PathVariable String username, Model model){
        Optional<UserProfile> userProfileOptional = userProfileRepository.findByUsername(username);

        UserProfile userProfile =  userProfileOptional.orElseThrow(
            ()-> new RuntimeErrorException(null, "Not Found "+username)
        );

        model.addAttribute("userProfile", userProfile);
    
        return "profile-templates/"+userProfile.getTheme()+"/index";
    }
}