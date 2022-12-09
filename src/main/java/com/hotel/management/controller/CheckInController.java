package com.hotel.management.controller;

import com.hotel.management.Services.CheckingService;
import com.hotel.management.model.Checking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

@Controller
public class CheckInController {

    @Autowired
    private CheckingService checkingService;

    @GetMapping(value = "/checking")
    public ModelAndView checking(ModelMap model) {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("checking");
        return modelAndView;
    }

    @GetMapping(value = "/checking-add")
    public ModelAndView newHotel(ModelMap model) {
        model.addAttribute("checking", new Checking());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("checking-add");
        return modelAndView;
    }

    @PostMapping(value = "/checking-add")
    public ModelAndView newHotel(ModelMap model, @Valid @ModelAttribute("checking-add") Checking checking, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();
        if(result.hasErrors()){
            modelAndView.setViewName("checking-add");
            model.put("created",false);
            model.put("message","Error on checkin process, please review and try again!");
            return modelAndView;
        }
       Boolean wasCreated = checkingService.saveChecking(checking);
        if(wasCreated==true){
            model.put("created",true);
            model.put("message","Checked successfully!");
        }else{
            model.put("created",false);
            model.put("message","Error creating checkin, please review and try again!");
        }
        return modelAndView;
    }
}
