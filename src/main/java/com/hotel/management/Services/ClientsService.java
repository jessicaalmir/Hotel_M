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
<<<<<<< Updated upstream
=======
    //Update clients details
    public Clients updateClients(Clients clients) {
        Clients clientsUpdated = clientsRepository.findById(clients.getId()).get();

        clientsUpdated.setAddress(clients.getAddress());
        clientsUpdated.setEmail(clients.getEmail());
        clientsUpdated.setName(clients.getName());
        clientsUpdated.setPhone(clients.getPhone());


        return clientsRepository.save(clientsUpdated);
    }
    public boolean deleteClients(Integer clientsId){
        try{
            clientsRepository.deleteById(clientsId);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
>>>>>>> Stashed changes
    //Find All Hotels
    public List<Clients> findAll(){
        return clientsRepository.findAll();
    }

    public Optional<Clients> findById(Integer id){ return clientsRepository.findById(id);}
}
