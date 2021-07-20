package io.fall.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "UserExperience")
public class UserExperience {
    
    @Id
    @GeneratedValue
    private int id;

    private String company;
    private String position;
    private String description;
    private LocalDate startDate;
    private LocalDate endDate;

    @ManyToOne 
    @JoinColumn(name = "userId")   // Foreign key reference
    private UserProfile userProfile;

    public UserExperience(){

    }

    public UserExperience(String company, String position, String description, LocalDate startDate, LocalDate endDate) {
        this.company = company;
        this.position = position;
        this.description = description;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
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