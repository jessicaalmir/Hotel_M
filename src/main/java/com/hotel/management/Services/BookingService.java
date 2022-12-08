package com.hotel.management.Services;

import com.hotel.management.Repository.BookingRepository;
import com.hotel.management.model.Booking;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookingService {

    @Autowired
    private BookingRepository bookingRepository;

    public List<Booking> findAll(){
        return bookingRepository.findAll();
    }

    public Boolean saveHotel(Booking booking) {
        try{
            bookingRepository.save(booking);
            return  true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public Optional<Booking> findById(long bookId) {
        return bookingRepository.findById(bookId);
    }

    public boolean deleteBooking(Long bookingId){
        try{
            bookingRepository.deleteById(bookingId);
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public Booking updateBooking(Booking booking) {
        Booking updatedBooking = bookingRepository.findById(booking.getBookingId()).get();

        updatedBooking.setRoomId(booking.getRoomId());
        updatedBooking.setStartDate(booking.getStartDate());
        updatedBooking.setEndDate(booking.getEndDate());

        return bookingRepository.save(updatedBooking);
    }
}
