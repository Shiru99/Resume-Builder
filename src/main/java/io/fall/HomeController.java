package io.fall;

import java.security.Principal;
import java.util.Optional;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import io.fall.model.UserEducation;
import io.fall.model.UserExperience;
import io.fall.model.UserProfile;
import io.fall.model.UserProfileRepository;
import io.fall.model.UserProject;
import io.fall.model.UserSkill;
import jdk.jshell.spi.ExecutionControl.UserException;

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
    public String editProfile(Model model, Principal principal,@RequestParam(required = false) String add) {

        Optional<UserProfile> userProfileOptional = userProfileRepository.findByUserName(principal.getName());

        UserProfile userProfile =  userProfileOptional.orElseThrow(
            ()-> new RuntimeErrorException(null, "Not Found "+principal.getName())
        );

        if ("education".equals(add)) {
            userProfile.addUserEducations(new UserEducation());
        } else if ("experience".equals(add)) {
            userProfile.addUserExperiences(new UserExperience());
        } else if ("project".equals(add)) {
            userProfile.addUserProject(new UserProject());
        }else if("skill".equals(add)){
            userProfile.addUserSkills(new UserSkill());
        }

        model.addAttribute("userProfile", userProfile);
        return "profile-edit";
    }

    @PostMapping("/edit")
    public String saveProfile(Principal principal,@ModelAttribute UserProfile userProfile) {
        
        Optional<UserProfile> originalUserProfileOptional = userProfileRepository.findByUserName(principal.getName());

        UserProfile originalUserProfile =  originalUserProfileOptional.orElseThrow(
            ()-> new RuntimeErrorException(null, "Not Found "+principal.getName())
        );

        userProfile.setId(originalUserProfile.getId());
        userProfile.setUserName(principal.getName());

        for (UserExperience experience : userProfile.getUserExperiences()) {
            experience.setUserProfile(userProfile);
        }

        for (UserEducation education : userProfile.getUserEducations()) {
            education.setUserProfile(userProfile);
        }

        for (UserProject project : userProfile.getUserProjects()) {
            project.setUserProfile(userProfile);
        }

        userProfileRepository.save(userProfile);

        return "redirect:/view/"+principal.getName();
    }

    @RequestMapping("/*")
    public String sayWelcome() {
        return "welcome";
    }
}