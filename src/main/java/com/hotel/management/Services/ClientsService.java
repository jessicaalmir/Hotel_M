package com.hotel.management.Services;

import com.hotel.management.Repository.ClientsRepository;
import com.hotel.management.model.Clients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ClientsService {
    @Autowired
    private ClientsRepository clientsRepository;

    public boolean saveClients(Clients clients) {
        try{
            clientsRepository.save(clients);
            return  true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
    //Find All Hotels
    public List<Clients> findAll(){
        return clientsRepository.findAll();
    }

    public Optional<Clients> findById(Integer id){ return clientsRepository.findById(id);}
}
