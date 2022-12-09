package com.hotel.management.Services;

import com.hotel.management.Repository.RoomRepository;
import com.hotel.management.model.Rooms;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class RoomService {
    @Autowired
    private RoomRepository roomRepository;

    //Adding new Room
    public boolean saveRoom(Rooms room) {
        try{
            roomRepository.save(room);
            return  true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
    //update Room details
    public Rooms updateRoom(Rooms room) {
        Rooms roomUpdated = roomRepository.findById(room.getId()).get();

        roomUpdated.setCategory(room.getCategory());
        roomUpdated.setHotel(room.getHotel());
        roomUpdated.setPricerange(room.getPricerange());
        roomUpdated.setImage(room.getImage());
        return roomRepository.save(roomUpdated);
    }
    //Find All Rooms
    public List<Rooms> findAll(){
        return roomRepository.findAll();
    }

    public Optional<Rooms> findById(Integer id){ return roomRepository.findById(id);}

}
