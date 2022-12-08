package com.hotel.management.Repository;

import com.hotel.management.model.Booking;
import com.hotel.management.model.Hotel;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BookingRepository extends CrudRepository<Booking, Long> {

    List<Booking> findAll();
}
