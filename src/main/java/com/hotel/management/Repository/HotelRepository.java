package com.hotel.management.Repository;

import com.hotel.management.model.Hotel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface HotelRepository extends CrudRepository<Hotel, Long> {

    List<Hotel> findAllByName(String str);

    List<Hotel> findAll();

    Optional<Hotel> findById(long id);


}
