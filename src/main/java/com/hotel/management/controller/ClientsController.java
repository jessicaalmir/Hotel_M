package com.hotel.management.controller;

import com.hotel.management.Services.ClientsService;
import com.hotel.management.model.Clients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
<<<<<<< Updated upstream
=======
import org.springframework.web.bind.annotation.PathVariable;
>>>>>>> Stashed changes
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
<<<<<<< Updated upstream
=======
import java.util.Optional;
>>>>>>> Stashed changes

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
<<<<<<< Updated upstream
    public ModelAndView newHotel(ModelMap model, @Valid @ModelAttribute("clients") Clients clients, BindingResult result) {
=======
    public ModelAndView newClients(ModelMap model, @Valid @ModelAttribute("clients") Clients clients, BindingResult result) {
>>>>>>> Stashed changes
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
<<<<<<< Updated upstream
=======
    //View clients detail
    @GetMapping(value = "/clients_view/{id}")
    public ModelAndView viewHotel(@PathVariable(value="id") Integer id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Clients> clients = clientsService.findById(id);
        model.put("clients", clients.orElse(null));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("clients_view");
        return modelAndView;
    }
    @GetMapping(value = "/clients_edit/{id}")
    public ModelAndView editClients(@PathVariable(value="id") Integer id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Clients> clients = clientsService.findById(id);
        model.put("clients", clients.orElse(null));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("clients_edit");
        return modelAndView;
    }

    @PostMapping(value = "/clients_edit")
    public ModelAndView editClients(ModelMap model, @Valid @ModelAttribute("clients") Clients clients, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            modelAndView.setViewName("clients_edit/" + clients.getId());
            model.put("updated",false);
            model.put("message","Error updating clients, please review and try again!");
            return modelAndView;
        }
        clientsService.updateClients(clients);
        model.put("updated",true);
        model.put("message","Clients updated successfully!");
        return modelAndView;
    }

    //delete client
    @GetMapping(value = "/clients_delete/{id}")
    public ModelAndView deleteClients(@PathVariable(value="id") Integer id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Clients> clients = clientsService.findById(id);
        model.put("clients", clients.orElse(null));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("clients_delete");
        return modelAndView;
    }

    @PostMapping(value = "/clients_delete")
    public ModelAndView deleteClients(ModelMap model, @Valid @ModelAttribute("clients") Clients clients, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            modelAndView.setViewName("clients_delete/" + clients.getId());
            model.put("deleted",false);
            model.put("message","Error deleting clients, please review and try again!");
            return modelAndView;
        }
        Boolean wasDeleted= clientsService.deleteClients(clients.getId());
        if(wasDeleted==true){
            model.put("deleted",true);
            model.put("message","Clients deleted successfully!");
        }else{
            model.put("deleted",false);
            model.put("message","Error deleting clients, please review and try again!");
        }
        return modelAndView;
    }

>>>>>>> Stashed changes

}