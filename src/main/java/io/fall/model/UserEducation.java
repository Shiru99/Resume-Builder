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
public class UserEducation {

    @Id
    @GeneratedValue
    private int id;
    private String college;
    private String degree;
    private String grade;
    private LocalDate startDate;
    private LocalDate endDate;

    @ManyToOne 
    @JoinColumn(name = "userId")   // Foreign key reference
    private UserProfile userProfile;

    public UserEducation(){
        
    }
    
    public UserEducation(String college, String degree, String grade, LocalDate startDate, LocalDate endDate) {
        this.college = college;
        this.degree = degree;
        this.grade = grade;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
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