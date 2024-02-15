package com.example;

import jakarta.validation.constraints.*;

public class PatientAddress {
    @Size(min = 3 , max = 40,message = "Should contain 3-40 letters")
    private String street;
    @NotNull(message = "City cannot be null")
    @NotEmpty(message ="City cannot be empty")
    private String city;
    @NotBlank(message = "city can not be blank")
    private String state;
    @Pattern(regexp = "^(India|UK|USA|Canada)$",message ="Select valid country" )
    private String country;
    @Min(value = 1000 , message = "pincode must be greater than 1000")
    @Max(value = 999999 , message = "pincode must be less than 999999")
    private int pincode;

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }
}
