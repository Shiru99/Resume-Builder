package io.fall;

import java.security.Principal;
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

    @GetMapping("/view/{username}")
    public String viewProfile(@PathVariable String username, Model model){
        Optional<UserProfile> userProfileOptional = userProfileRepository.findByUserName(username);

        UserProfile userProfile =  userProfileOptional.orElseThrow(
            ()-> new RuntimeErrorException(null, "Not Found "+username)
        );

        model.addAttribute("userProfile", userProfile);
    
        return "profile-templates/"+userProfile.getTheme()+"/index";
    }

    @RequestMapping("/edit")
    public String editProfile(Model model, Principal principal) {
        model.addAttribute("userName", principal.getName());
        return "profile";
    }

    @RequestMapping("/*")
    public String sayWelcome() {
        return "welcome";
    }
}