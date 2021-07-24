package io.fall.model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "user_project")
public class UserProject {

    @Id
    @GeneratedValue
    private int id;
    private String projectName;
    private String tools;
    private String description;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String formattedStartDate(){
        return startDate.format(DateTimeFormatter.ofPattern("MMM yyyy"));
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public String formattedEndDate(){
        return endDate.format(DateTimeFormatter.ofPattern("MMM yyyy"));
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