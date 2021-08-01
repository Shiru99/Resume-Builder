package io.fall;

import java.security.Principal;
import java.util.Optional;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import io.fall.model.User;
import io.fall.model.UserEducation;
import io.fall.model.UserExperience;
import io.fall.model.UserProfile;
import io.fall.model.UserProfileRepository;
import io.fall.model.UserProject;
import io.fall.model.UserRepository;
import io.fall.model.UserSkill;

// @RestController // rest controller - JSON only
@Controller
public class HomeController {

    @Autowired
    UserProfileRepository userProfileRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @GetMapping("/view/{username}")
    public String viewProfile(Principal principal, @PathVariable String username, Model model) {

        try {
            if (principal != null) {
                boolean originalUser = principal.getName().equals(username);
                model.addAttribute("originalUser", originalUser);
            }

            Optional<UserProfile> userProfileOptional = userProfileRepository.findByUserName(username);

            UserProfile userProfile = userProfileOptional
                    .orElseThrow(() -> new RuntimeErrorException(null, "Not Found " + username));

            model.addAttribute("userProfile", userProfile);

            return "profile-templates/" + userProfile.getTheme() + "/index";
        } catch (Exception e) {
            return "redirect:/";
        }

    }

    @GetMapping("/edit")
    public String editProfile(Model model, Principal principal, @RequestParam(required = false) String add) {

        try {
            Optional<UserProfile> userProfileOptional = userProfileRepository.findByUserName(principal.getName());

            UserProfile userProfile = userProfileOptional
                    .orElseThrow(() -> new RuntimeErrorException(null, "Not Found " + principal.getName()));

            if ("education".equals(add)) {
                userProfile.addUserEducations(new UserEducation());
            } else if ("experience".equals(add)) {
                userProfile.addUserExperiences(new UserExperience());
            } else if ("project".equals(add)) {
                userProfile.addUserProject(new UserProject());
            } else if ("skill".equals(add)) {
                userProfile.addUserSkills(new UserSkill());
            }

            model.addAttribute("userProfile", userProfile);
        } catch (Exception e) {
            return "redirect:/";
        }

        return "profile-edit";
    }

    @GetMapping("/delete")
    public String delete(Model model, Principal principal, @RequestParam String type, @RequestParam int index) {

        try {
            Optional<UserProfile> userProfileOptional = userProfileRepository.findByUserName(principal.getName());

            UserProfile userProfile = userProfileOptional
                    .orElseThrow(() -> new RuntimeErrorException(null, "Not Found " + principal.getName()));

            if ("education".equals(type)) {
                userProfile.getUserEducations().remove(index);
            } else if ("experience".equals(type)) {
                userProfile.getUserExperiences().remove(index);
                System.out.println("working");
            } else if ("project".equals(type)) {
                userProfile.getUserProjects().remove(index);
            } else if ("skill".equals(type)) {
                userProfile.getUserSkills().remove(index);
            }

            userProfileRepository.save(userProfile);
        } catch (Exception e) {
            return "redirect:/edit";
        }

        return "redirect:/edit";
    }

    @PostMapping("/edit")
    public String saveProfile(Principal principal, @ModelAttribute UserProfile userProfile) {

        try {

            
            Optional<UserProfile> originalUserProfileOptional = userProfileRepository
                    .findByUserName(principal.getName());

            UserProfile originalUserProfile = originalUserProfileOptional
                    .orElseThrow(() -> new RuntimeErrorException(null, "Not Found " + principal.getName()));

            userProfile.setId(originalUserProfile.getId());
            userProfile.setUserName(principal.getName());

            for (UserExperience experience : userProfile.getUserExperiences()) {
                System.out.println(experience.getEndDate());
                experience.setUserProfile(userProfile);

            }

            for (UserEducation education : userProfile.getUserEducations()) {
                System.out.println(education.getEndDate());
                education.setUserProfile(userProfile);
            }

            for (UserProject project : userProfile.getUserProjects()) {
                System.out.println(project.getEndDate());
                project.setUserProfile(userProfile);
            }

            userProfileRepository.save(userProfile);
        } catch (Exception e) {
            return "redirect:/view/" + principal.getName();
        }

        return "redirect:/view/" + principal.getName();
    }

    boolean notAvailable = false;

    @GetMapping("/create")
    public String createProfile(Model model) {
        try {
            UserProfile userProfile = new UserProfile();
            User user = new User();
            model.addAttribute("notAvailable", notAvailable);
            model.addAttribute("user", user);
            model.addAttribute("userProfile", userProfile);
        } catch (Exception e) {
            return "redirect:/";
        }

        return "profile-create";
    }

    @PostMapping("/create")
    @Transactional
    public String saveProfile(Model model, @ModelAttribute UserProfile userProfile, @ModelAttribute User user) {
        try {
            user.setActive(true);
            user.setRoles("ROLE_USER");
            user.setPassword(passwordEncoder.encode(user.getPassword()));

            Optional<User> existingUserOptional = userRepository.findByUsername(user.getUsername());
            if (existingUserOptional.isPresent()) {
                notAvailable = true;
                return "redirect:/create";
            }

            userProfile.setUserName(user.getUsername());
            userProfile.setTheme(1);

            try {
                userRepository.save(user);
                userProfileRepository.save(userProfile);
            } catch (Exception e) {
                return "/";
            }
        } catch (Exception e) {
            return "profile-create";
        }

        return "redirect:/login";
    }

    @RequestMapping("/error")
    public String sayError() {
        return "error-page";
    }

    @RequestMapping("/*")
    public String sayWelcome() {
        return "welcome";
    }
}