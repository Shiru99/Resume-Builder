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
@Table(name = "user_education")
public class UserEducation {

    @Id
    @GeneratedValue
    private int id;
    private String college;
    private String degree;
    private String grade;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endDate;
    private boolean currentEducation;

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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isCurrentEducation() {
        return currentEducation;
    }

    public void setCurrentEducation(boolean currentEducation) {
        this.currentEducation = currentEducation;
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

    public String formattedStartDate(){
        return startDate.format(DateTimeFormatter.ofPattern("MMM yyyy"));
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

    public String formattedEndDate(){
        return endDate.format(DateTimeFormatter.ofPattern("MMM yyyy"));
    }

    public UserProfile getUserProfile() {
        return userProfile;
    }

    public void setUserProfile(UserProfile userProfile) {
        this.userProfile = userProfile;
    }
}