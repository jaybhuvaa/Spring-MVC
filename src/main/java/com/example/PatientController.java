package com.example;

import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import java.lang.reflect.Array;
import java.util.Arrays;

@Controller
public class PatientController {
    @RequestMapping("/appointment")
    public ModelAndView appointment(Model model) {
        Patient p = new Patient();
//        p.setpName("Enter Name Here");
//        p.setpContact("XXXXXXXXXX");
        p.setFavouriteFood("Health");
        p.setInterests(new String[]{"Food"});
        p.setReceiveNewsletter(true);
        p.setPatientGender("Male");
        model.addAttribute("countryList", Arrays.asList("India", "UK", "USA", "Canada"));
        model.addAttribute("allergyList", Arrays.asList("Smoke", "Dust", "Peanuts"));


        return new ModelAndView("appointment", "patient", p);
    }

    //    @PostMapping("/addAppointment")
//    public ModelAndView addAppointment(@RequestParam (value = "pName",defaultValue = "Name")String pName, @RequestParam(value = "pContact",defaultValue = "Not available")String pContact) {
//        ModelAndView modelAndView = new ModelAndView("/addAppointment");
//        modelAndView.addObject("message", String.format("we have registered your details as Name : %s , Contact : %s", pName, pContact));
//        return modelAndView;
//    }
//    @PostMapping("/addAppointment")
//    public ModelAndView addAppointment(@RequestParam Map<String, String> requestParam) {
//        ModelAndView modelAndView = new ModelAndView("/addAppointment");
//        modelAndView.addObject("message", String.format("we have registered your details as Name : %s , Contact : %s", requestParam.get("pName"), requestParam.get("pContact")));
//        return modelAndView;
//    @PostMapping("/addAppointment")
//    public ModelAndView addAppointment(@RequestParam Map<String, String> requestParam) {
//        ModelAndView modelAndView = new ModelAndView("/addAppointment");
//        modelAndView.addObject("message", "We have successfully registered your appointment");
//        patient p=new patient();
//        p.setpContact(requestParam.get("pContact"));
//        p.setpName(requestParam.get("pName"));
//        modelAndView.addObject("patient",p);
//        return modelAndView;
    @PostMapping("/addAppointment")
    public ModelAndView addAppointment(@Valid @ModelAttribute Patient patient, BindingResult bindingResult, Model model) {

        if (bindingResult.hasErrors()) {
            model.addAttribute("countryList", Arrays.asList("India", "UK", "USA", "Canada"));
            model.addAttribute("allergyList", Arrays.asList("Smoke", "Dust", "Peanuts"));


            return new ModelAndView("appointment", "patient", patient);
        }


        ModelAndView modelAndView = new ModelAndView("/addAppointment");
        modelAndView.addObject("message", "We have successfully registered your appointment");
        return modelAndView;
    }

    @ModelAttribute
    public void addingCommonObject(Model model) {
        model.addAttribute("mainheader", "Welcome to the Hospital!!");

    }
}

