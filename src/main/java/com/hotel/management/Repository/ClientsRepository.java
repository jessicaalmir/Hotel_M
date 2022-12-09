package com.hotel.management.Repository;

import com.hotel.management.model.Clients;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface ClientsRepository extends CrudRepository<Clients, Integer> {

    List<Clients> findAllByName(String str);

    List<Clients> findAll();

    Optional<Clients> findById(Integer id);


}
