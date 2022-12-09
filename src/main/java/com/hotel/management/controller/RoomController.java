package com.hotel.management.controller;

import com.hotel.management.Services.RoomService;
import com.hotel.management.model.Rooms;
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
public class RoomController {

    @Autowired
    private RoomService roomService;

    @GetMapping(value = "/room")
    public ModelAndView room(ModelMap model) {
        model.put("room", roomService.findAll());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("room");
        return modelAndView;
    }

    @GetMapping(value = "/room-details/{id}")
    public ModelAndView viewRoom(@PathVariable(value="id") Integer id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Rooms> rooms = roomService.findById(id);
        model.put("room", rooms.orElse(null));
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("room-details");
        return modelAndView;
    }

    @GetMapping(value = "/new-room")
    public ModelAndView newRoom(ModelMap model) {
        model.addAttribute("room", new Rooms());
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("new-room");
        return modelAndView;
    }

    @PostMapping(value = "/new-room")
    public ModelAndView newRoom(ModelMap model, @Valid @ModelAttribute("room") Rooms room, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();
        if(result.hasErrors()){
            modelAndView.setViewName("new-room");
            model.put("created",false);
            model.put("message","Error creating room, please review and try again!");
            return modelAndView;
        }
        Boolean wasCreated = roomService.saveRoom(room);
        if(wasCreated==true){
            model.put("created",true);
            model.put("message","Room created successfully!");
        }else{
            model.put("created",false);
            model.put("message","Error creating room, please review and try again!");
        }
        return modelAndView;
    }

    @GetMapping(value = "/edit-room/{id}")
    public ModelAndView editRoom(@PathVariable(value="id") Integer id, ModelMap model) {
        model.addAttribute("id",id);
        Optional<Rooms> room = roomService.findById(id);
        model.put("room", room.orElse(null));

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("edit-room");
        return modelAndView;
    }
    @PostMapping(value = "/edit-room")
    public ModelAndView editRoom(ModelMap model, @Valid @ModelAttribute("room") Rooms room, BindingResult result) {
        ModelAndView modelAndView = new ModelAndView();

        if(result.hasErrors()){
            modelAndView.setViewName("edit-room/" + room.getId());
            model.put("updated",false);
            model.put("message","Error updating room, please review and try again!");
            return modelAndView;
        }
        roomService.updateRoom(room);
        model.put("updated",true);
        model.put("message","Room updated successfully!");
        return modelAndView;
    }
}