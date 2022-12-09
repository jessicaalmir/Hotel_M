package com.hotel.management.Repository;

import com.hotel.management.model.Checking;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CheckingRepository extends CrudRepository <Checking, Long> {

    List<Checking> findAll();


}
