package com.hotel.management.controller;

import com.hotel.management.Services.BookingService;
import com.hotel.management.Services.HotelService;
import com.hotel.management.model.Booking;
import com.hotel.management.model.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Optional;

@Controller
public class BookingController {

    @Autowired
    private BookingService bookingService;

    @Autowired
    private HotelService hotelService;

    @GetMapping(value = "/booking")
    public ModelAndView booking(ModelMap model) {
        model.put("bookings", bookingService.findAll());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("booking");
        return modelAndView;
    }

    @GetMapping(value = "/view-booking/{id}")
    public ModelAndView viewHotel(@PathVariable(value="id") long bookingId, ModelMap model) {
        model.addAttribute("bookingId",bookingId);
        Optional<Booking> booking = bookingService.findById(bookingId);
        Optional<Hotel> hotel = hotelService.findById(booking.get().getHotelId());
        model.put("booking", booking.orElse(null));
        model.put("hotelName", hotel.get().getName());
        model.put("hotelAddress", hotel.get().getAddress());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("view-booking");
        return modelAndView;
    }

    @GetMapping(value = "/edit-booking/{id}")
    public ModelAndView editBooking(@PathVariable(value="id") long id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Booking> booking = bookingService.findById(id);
        model.put("booking", booking.orElse(null));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("edit-booking");
        return modelAndView;
    }

    @PostMapping(value = "/edit-booking")
    public ModelAndView editBooking(ModelMap model, @Valid @ModelAttribute("booking") Booking booking, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            modelAndView.setViewName("edit-booking/" + booking.getBookingId());
            model.put("updated",false);
            model.put("message","Error updating booking, please review and try again!");
            return modelAndView;
        }
        bookingService.updateBooking(booking);
        model.put("updated",true);
        model.put("message","Booking updated successfully!");
        return modelAndView;
    }



    @GetMapping(value = "/new-booking")
    public ModelAndView newHotel(ModelMap model) {
        model.addAttribute("booking", new Booking());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("new-booking");
        return modelAndView;
    }

    @PostMapping(value = "/new-booking")
    public ModelAndView newHotel(ModelMap model, @Valid @ModelAttribute("booking") Booking booking, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();
        if (result.hasErrors()) {
            modelAndView.setViewName("new-booking");
            model.put("created", false);
            model.put("message", "Error creating booking, please review and try again!");
            return modelAndView;
        }
        Boolean wasCreated = bookingService.saveHotel(booking);
        if (wasCreated == true) {
            model.put("created", true);
            model.put("message", "New booking created successfully!");
        } else {
            model.put("created", false);
            model.put("message", "Error creating booking, please review and try again!");
        }
        return modelAndView;
    }

    @GetMapping(value = "/delete-booking/{id}")
    public ModelAndView deleteBooking(@PathVariable(value="id") long bookingId, ModelMap model) {
        model.addAttribute("bookingId",bookingId);
        Optional<Booking> booking = bookingService.findById(bookingId);
        model.put("booking", booking.orElse(null));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("delete-booking");
        return modelAndView;
    }


    @PostMapping(value = "/delete-booking")
    public ModelAndView deleteHotel(ModelMap model, @Valid @ModelAttribute("booking") Booking booking, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            modelAndView.setViewName("delete-booking/" + booking.getBookingId());
            model.put("deleted",false);
            model.put("message","Error deleting booking, please review and try again!");
            return modelAndView;
        }
        Boolean wasDeleted= bookingService.deleteBooking(booking.getBookingId());
        if(wasDeleted==true){
            model.put("deleted",true);
            model.put("message","Booking deleted successfully!");
        }else{
            model.put("deleted",false);
            model.put("message","Error deleting booking, please review and try again!");
        }
        return modelAndView;
    }

}
