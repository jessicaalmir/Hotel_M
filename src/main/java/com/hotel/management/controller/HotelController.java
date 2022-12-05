package com.hotel.management.controller;

import com.hotel.management.Services.HotelService;
import com.hotel.management.model.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Optional;

@Controller
public class HotelController {

   @Autowired
    private HotelService hotelService;

    @GetMapping(value = "/hotel")
    public ModelAndView hotel(ModelMap model) {
        model.put("hotels", hotelService.findAll());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("hotel");
        return modelAndView;
    }

    @GetMapping(value = "/new-hotel")
    public ModelAndView newHotel(ModelMap model) {
        model.addAttribute("hotel", new Hotel());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("new-hotel");
        return modelAndView;
    }

    @PostMapping(value = "/new-hotel")
    public ModelAndView newHotel(ModelMap model, @Valid @ModelAttribute("hotel") Hotel hotel, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();
        if(result.hasErrors()){
            modelAndView.setViewName("new-hotel");
            model.put("created",false);
            model.put("message","Error creating hotel, please review and try again!");
            return modelAndView;
        }
        Boolean wasCreated = hotelService.saveHotel(hotel);
        if(wasCreated==true){
            model.put("created",true);
            model.put("message","Hotel created successfully!");
        }else{
            model.put("created",false);
            model.put("message","Error creating hotel, please review and try again!");
        }
        return modelAndView;
    }

    @GetMapping(value = "/view-hotel/{id}")
    public ModelAndView viewHotel(@PathVariable(value="id") long id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Hotel> hotel = hotelService.findById(id);
        model.put("hotel", hotel.orElse(null));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("view-hotel");
        return modelAndView;
    }

    @GetMapping(value = "/edit-hotel/{id}")
    public ModelAndView editHotel(@PathVariable(value="id") long id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Hotel> hotel = hotelService.findById(id);
        model.put("hotel", hotel.orElse(null));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("edit-hotel");
        return modelAndView;
    }

    @PostMapping(value = "/edit-hotel")
    public ModelAndView editHotel(ModelMap model, @Valid @ModelAttribute("hotel") Hotel hotel, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            modelAndView.setViewName("edit-hotel/" + hotel.getId());
            model.put("updated",false);
            model.put("message","Error updating hotel, please review and try again!");
            return modelAndView;
        }
        hotelService.updateHotel(hotel);
        model.put("updated",true);
        model.put("message","Hotel updated successfully!");
        return modelAndView;
    }

    @GetMapping(value = "/delete-hotel/{id}")
    public ModelAndView deleteHotel(@PathVariable(value="id") long id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Hotel> hotel = hotelService.findById(id);
        model.put("hotel", hotel.orElse(null));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("delete-hotel");
        return modelAndView;
    }

    @PostMapping(value = "/delete-hotel")
    public ModelAndView deleteHotel(ModelMap model, @Valid @ModelAttribute("hotel") Hotel hotel, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            modelAndView.setViewName("delete-hotel/" + hotel.getId());
            model.put("deleted",false);
            model.put("message","Error deleting hotel, please review and try again!");
            return modelAndView;
        }
        Boolean wasDeleted= hotelService.deleteHotel(hotel.getId());
        if(wasDeleted==true){
            model.put("deleted",true);
            model.put("message","Hotel deleted successfully!");
        }else{
            model.put("deleted",false);
            model.put("message","Error deleting hotel, please review and try again!");
        }
        return modelAndView;
    }
}
