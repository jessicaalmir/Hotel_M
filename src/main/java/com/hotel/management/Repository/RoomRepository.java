package com.hotel.management.Repository;

import com.hotel.management.model.Rooms;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface RoomRepository extends CrudRepository<Rooms, Integer> {

    List<Rooms> findAll();

    Optional<Rooms> findById(Integer id);
}
