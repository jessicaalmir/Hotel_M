package com.hotel.management.controller;

import com.hotel.management.Services.PaymentService;
import com.hotel.management.model.Hotel;
import com.hotel.management.model.Payment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@Controller
public class PaymentController {
    @Autowired
    private PaymentService paymentService;

    @GetMapping(value = "/payment")
    public ModelAndView payment(ModelMap model) {
        model.put("payments", paymentService.findAll());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("payment");
        return modelAndView;
    }

    @GetMapping(value = "/new-payment")
    public ModelAndView newPayment(ModelMap model) {
        model.addAttribute("payment", new Payment());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("new-payment");
        return modelAndView;
    }

    @PostMapping(value = "/new-payment")
    public ModelAndView newHotel(ModelMap model, @Valid @ModelAttribute("payment") Payment payment, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();
        payment.setDate(LocalDateTime.now());
        if(result.hasErrors()){
            modelAndView.setViewName("new-payment");
            model.put("created",false);
            model.put("message","Error creating payment, please review and try again!");
            return modelAndView;
        }
        Boolean wasCreated = paymentService.savePayment(payment);
        if(wasCreated==true){
            model.put("created",true);
            model.put("message","Payment of $" + payment.getTotalCost() + " was successfully done!");
        }else{
            model.put("created",false);
            model.put("message","Error making the payment, please review and try again!");
        }
        return modelAndView;
    }
}
