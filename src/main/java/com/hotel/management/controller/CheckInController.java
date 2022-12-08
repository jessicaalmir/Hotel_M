package com.hotel.management.controller;

import com.hotel.management.Services.HotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CheckInController {

    @Autowired
    private HotelService hotelService;

    @GetMapping(value = "/checking")
    public ModelAndView checking(ModelMap model) {
        model.put("hotels", hotelService.findAll());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("checking");
        return modelAndView;
    }
}
