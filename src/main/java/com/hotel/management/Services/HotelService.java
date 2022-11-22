package com.hotel.management.Services;

import com.hotel.management.Repository.HotelRepository;
import com.hotel.management.model.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class HotelService {
    @Autowired
    private HotelRepository hotelRepository;

    //Adding new Hotel
    public boolean saveHotel(Hotel Hotel) {
//        if(hotelRepository.findById(hotelName).isPresent())
//        {
//            return true;
//        }
//        else
//        {
//            hotelRepository.save(Hotel);
//            return false;
//        }
        return false;
    }

    //update Hotel details
    public Hotel updateHotel(Hotel hotel) {
        Hotel hotelUpdated = hotelRepository.findById(hotel.getId()).get();

        hotelUpdated.setAddress(hotel.getAddress());
        hotelUpdated.setCategory(hotel.getCategory());
        hotelUpdated.setEmail(hotel.getEmail());
        hotelUpdated.setName(hotel.getName());
        hotelUpdated.setHasGym(hotel.getHasGym());
        hotelUpdated.setPhone(hotel.getPhone());
        hotelUpdated.setHasEventHall(hotel.getHasEventHall());
        hotelUpdated.setHasPool(hotel.getHasPool());
        hotelUpdated.setPetFriendly(hotel.getPetFriendly());

        return hotelRepository.save(hotelUpdated);
    }

    //Find All Hotels
    public List<Hotel> findAll(){
        return hotelRepository.findAll();
    }

    public Optional<Hotel> findById(long id){ return hotelRepository.findById(id);}

}
