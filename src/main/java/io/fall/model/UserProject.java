package io.fall.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "UserEducation")
public class UserProject {

    @Id
    @GeneratedValue
    private int id;
    private String projectName;
    private String tools;
    private String description;
    private LocalDate startDate;
    private LocalDate endDate;

    @ManyToOne 
    @JoinColumn(name = "userId")   // Foreign key reference
    private UserProfile userProfile;

    public UserProject(){

    }

    public UserProject(String projectName, String tools, String description, LocalDate startDate, LocalDate endDate) {
        this.projectName = projectName;
        this.tools = tools;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getTools() {
        return tools;
    }

    public void setTools(String tools) {
        this.tools = tools;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public UserProfile getUserProfile() {
        return userProfile;
    }

    public void setUserProfile(UserProfile userProfile) {
        this.userProfile = userProfile;
    }
}