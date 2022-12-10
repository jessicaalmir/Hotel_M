package com.hotel.management.model;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "payment")
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "Id")
    private Long id;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    private Integer TotalCost;

    public void setTotalCost(Integer totalCost) {
        TotalCost = totalCost;
    }

    public Integer getTotalCost() {
        return TotalCost;
    }

    @Column(name="HotelBooked")
    private String HotelBooked;

    public void setHotelBooked(String hotelBooked) {
        HotelBooked = hotelBooked;
    }

    public String getHotelBooked() {
        return HotelBooked;
    }

    @Column(name="Date")
    private LocalDateTime Date;

    public void setDate(LocalDateTime date) {
        Date = LocalDateTime.now();
    }

    public LocalDateTime getDate() {
        return Date;
    }

    @Column(name="QuantityPeople")
    private Integer QuantityPeople;

    public void setQuantityPeople(Integer quantityPeople) {
        QuantityPeople = quantityPeople;
    }

    public Integer getQuantityPeople() {
        return QuantityPeople;
    }

    @Column(name="Status")
    private String Status;

    public void setStatus(String status) {
        Status = status;
    }

    public String getStatus() {
        return Status;
    }

    @Column(name = "LastFourDigits")
    private String LastFourDigits;

    public void setLastFourDigits(String lastFourDigits) {
        LastFourDigits = lastFourDigits;
    }

    public String getLastFourDigits() {
        return LastFourDigits;
    }
}
