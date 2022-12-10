package com.hotel.management.Repository;

import com.hotel.management.model.Payment;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PaymentRepository extends CrudRepository<Payment, Long> {

    List<Payment> findAll();

    Payment findById(int id);
}
