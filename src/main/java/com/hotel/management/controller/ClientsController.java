package com.hotel.management.controller;

import com.hotel.management.Services.ClientsService;
import com.hotel.management.model.Clients;
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
public class ClientsController {

    @Autowired
    private ClientsService clientsService;

    @GetMapping(value = "/clients")
    public ModelAndView hotel(ModelMap model) {
        model.put("clients", clientsService.findAll());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("clients");
        return modelAndView;
    }

    @GetMapping(value = "/clients_newAdd")
    public ModelAndView newClients(ModelMap model) {
        model.addAttribute("clients", new Clients());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("clients_newAdd");
        return modelAndView;
    }

    @PostMapping(value = "/clients_newAdd")
    public ModelAndView newHotel(ModelMap model, @Valid @ModelAttribute("clients") Clients clients, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();
        if(result.hasErrors()){
            modelAndView.setViewName("clients_newAdd");
            model.put("created",false);
            model.put("message","Error creating hotel, please review and try again!");
            return modelAndView;
        }
        Boolean wasCreated = clientsService.saveClients(clients);
        if(wasCreated==true){
            model.put("created",true);
            model.put("message","Client created successfully!");
        }else{
            model.put("created",false);
            model.put("message","Error creating client, please review and try again!");
        }
        return modelAndView;
    }

}