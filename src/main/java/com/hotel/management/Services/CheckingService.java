package com.hotel.management.Services;

import com.hotel.management.model.Checking;

public class CheckingService {
   // @Autowired
   // private CheckingRepository checkingRepository;

    //Adding new Hotel
    public boolean saveChecking(Checking checking) {
        try{
        //    checkingRepository.save(checking);
            return  true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
