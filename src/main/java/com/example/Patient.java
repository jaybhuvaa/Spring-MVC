package com.example;

import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Past;
import jakarta.validation.constraints.Pattern;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

public class Patient {
    @Pattern(regexp = "^[a-zA-Z. ]+$",message = "Patient name should contain letters only")
    private String pName;
    @Pattern(regexp = "^[6-9]\\d{9}$",message = "Patient Conatct shold be of 10 digits")
    private String pContact;
    private boolean receiveNewsletter;
    private String patientGender;

    public String getPatientGender() {
        return patientGender;
    }

    public void setPatientGender(String patientGender) {
        this.patientGender = patientGender;
    }

    private String[] interests;

    private String favouriteFood;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @NotNull(message = "Birthday can not be null")
    @Past(message = "please enter valid birth date")
    private Date patientDOB;

    private List<String> patientAllergies;
    @Valid
    private PatientAddress patientAddress;

    public Date getPatientDOB() {
        return patientDOB;
    }

    public void setPatientDOB(Date patientDOB) {
        this.patientDOB = patientDOB;
    }

    public List<String> getPatientAllergies() {
        return patientAllergies;
    }

    public void setPatientAllergies(List<String> patientAllergies) {
        this.patientAllergies = patientAllergies;
    }

    public PatientAddress getPatientAddress() {
        return patientAddress;
    }

    public void setPatientAddress(PatientAddress patientAddress) {
        this.patientAddress = patientAddress;
    }

    public boolean isReceiveNewsletter() {
        return receiveNewsletter;
    }

    public void setReceiveNewsletter(boolean receiveNewsletter) {
        this.receiveNewsletter = receiveNewsletter;
    }

    public String[] getInterests() {
        return interests;
    }

    public void setInterests(String[] interests) {
        this.interests = interests;
    }

    public String getFavouriteFood() {
        return favouriteFood;
    }

    public void setFavouriteFood(String favouriteFood) {
        this.favouriteFood = favouriteFood;
    }

    public String getpContact() {
        return pContact;
    }

    public void setpContact(String pContact) {
        this.pContact = pContact;
    }

    public String getpName() {
        return pName;
    }

    public void setpName(String pName) {
        this.pName = pName;
    }
}
