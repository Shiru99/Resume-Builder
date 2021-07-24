package io.fall.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "user_profile")
public class UserProfile {
    
    @Id
    @GeneratedValue
    private int id;
    private int theme;
    private String userName;
    private String firstName, lastName;
    private String jobTitle;
    private String email;
    private String website;
    private String phoneNum;
    private String summary;
    private String profilePic;

    @ManyToMany(
        fetch = FetchType.EAGER,
        cascade=CascadeType.MERGE
    )
    @JoinTable(
        name = "user_skills",
        joinColumns = @JoinColumn(name="user_id"),
        inverseJoinColumns = @JoinColumn(name = "skill_id")
    )
    private List<UserSkill> userSkills = new ArrayList<UserSkill>();

    @OneToMany(
        mappedBy = "userProfile",
        cascade = CascadeType.ALL,
        orphanRemoval = true
    )
    private List<UserEducation> userEducations = new ArrayList<>();

    @OneToMany(
        mappedBy = "userProfile",
        cascade = CascadeType.ALL,
        orphanRemoval = true
    )
    private List<UserExperience> userExperiences = new ArrayList<>();

    @OneToMany(
        mappedBy = "userProfile",
        cascade = CascadeType.ALL,
        orphanRemoval = true
    )
    private List<UserProject> userProjects = new ArrayList<>();

    public UserProfile(){

    }

    public UserProfile(int theme, String userName, String firstName, String lastName, String jobTitle, String email, String website, String phoneNum, String summary) {
        this.theme = theme;
        this.userName = userName;
        this.firstName = firstName;
        this.lastName = lastName;
        this.jobTitle = jobTitle;
        this.email = email;
        this.website = website;
        this.phoneNum = phoneNum;
        this.summary = summary;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTheme() {
        return theme;
    }

    public void setTheme(int theme) {
        this.theme = theme;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public List<UserSkill> getUserSkills() {
        return userSkills;
    }

    public void setUserSkills(List<UserSkill> userSkills) {
        this.userSkills = userSkills;
    }

    public void addUserSkills(UserSkill userSkill) {
        this.userSkills.add(userSkill);
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public List<UserEducation> getUserEducations() {
        return userEducations;
    }

    public void setUserEducations(List<UserEducation> userEducations) {
        this.userEducations = userEducations;
    }

    public void addUserEducations(UserEducation userEducation) {
        this.userEducations.add(userEducation);
    }

    public List<UserExperience> getUserExperiences() {
        return userExperiences;
    }

    public void setUserExperiences(List<UserExperience> userExperiences) {
        this.userExperiences = userExperiences;
    }

    public void addUserExperiences(UserExperience userExperience) {
        this.userExperiences.add(userExperience);
    }

    public List<UserProject> getUserProjects() {
        return userProjects;
    }

    public void setUserProjects(List<UserProject> userProjects) {
        this.userProjects = userProjects;
    }

    public void addUserProject(UserProject userProject) {
        this.userProjects.add(userProject);
    }    
}