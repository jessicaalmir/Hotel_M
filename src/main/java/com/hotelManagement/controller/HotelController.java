package com.hotelManagement.controller;

import com.hotelManagement.Services.HotelService;
import com.hotelManagement.model.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Optional;

@Controller
public class HotelController {

   @Autowired
    private HotelService hotelService;

    @RequestMapping(value = "/hotel", method = RequestMethod.GET)
    public ModelAndView hotel(ModelMap model) {
        model.put("hotels", hotelService.findAll());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("hotel");
        return modelAndView;
    }

    @RequestMapping(value = "/view-hotel/{id}", method = RequestMethod.GET)
    public ModelAndView viewHotel(@PathVariable(value="id") long id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Hotel> hotel = hotelService.findById(id);
        model.put("hotel", hotel.orElse(null));
        if (hotel.get().getPetFriendly() ==true)
            model.addAttribute("isPetFriendly","Yes");
        else
            model.addAttribute("isPetFriendly","No");
        if (hotel.get().getHasEventHall() ==true)
            model.addAttribute("hasEventHallView","Yes");
        else
            model.addAttribute("hasEventHallView","No");
        if (hotel.get().getHasPool() ==true)
            model.addAttribute("hasPool","Yes");
        else
            model.addAttribute("hasPool","No");
        if (hotel.get().getHasGym() ==true)
            model.addAttribute("hasGym","Yes");
        else
            model.addAttribute("hasGym","No");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("view-hotel");
        return modelAndView;
    }

    @RequestMapping(value = "/edit-hotel/{id}", method = RequestMethod.GET)
    public ModelAndView editHotel(@PathVariable(value="id") long id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Hotel> hotel = hotelService.findById(id);
        model.put("hotel", hotel.orElse(null));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("edit-hotel");
        return modelAndView;
    }

    @RequestMapping(value = "/edit-hotel", method = RequestMethod.POST)
    public ModelAndView editHotel(ModelMap model, @Valid @ModelAttribute("hotel") Hotel hotel, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            System.out.println(model.get("hotel"));
            modelAndView.setViewName("edit-hotel/" + hotel.getId());
            return modelAndView;
        }
        hotelService.updateHotel(hotel);

        return hotel(model);
    }
}
