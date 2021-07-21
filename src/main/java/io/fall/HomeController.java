package io.fall;

import java.security.Principal;
import java.util.Optional;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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

    @GetMapping("/edit")
    public String editProfile(Model model, Principal principal) {

        Optional<UserProfile> userProfileOptional = userProfileRepository.findByUserName(principal.getName());

        UserProfile userProfile =  userProfileOptional.orElseThrow(
            ()-> new RuntimeErrorException(null, "Not Found "+principal.getName())
        );

        model.addAttribute("userProfile", userProfile);
        return "profile-edit";
    }

    @PostMapping("/edit")
    public String saveProfile(Model model, Principal principal) {
        
        /* TODO : Save updated profile */

        return "redirect:/view/"+principal.getName();
    }

    @RequestMapping("/*")
    public String sayWelcome() {
        return "welcome";
    }
}