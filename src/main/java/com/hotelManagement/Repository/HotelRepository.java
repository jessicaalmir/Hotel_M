package com.hotelManagement.Repository;

import com.hotelManagement.model.Hotel;
import org.springframework.data.jpa.repository.JpaRepository;
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
