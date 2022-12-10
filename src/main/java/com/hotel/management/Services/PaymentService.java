package com.hotel.management.Services;

import com.hotel.management.Repository.PaymentRepository;
import com.hotel.management.model.Payment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentService {
    @Autowired
    private PaymentRepository paymentRepository;

    public boolean savePayment(Payment payment) {
        try{
            payment.setLastFourDigits(payment.getLastFourDigits().substring(12, 16));
            payment.setStatus("Paid");
            paymentRepository.save(payment);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public List<Payment> findAll(){
        return paymentRepository.findAll();
    }

    public Payment FindById(int id){ return paymentRepository.findById(id);}


}
