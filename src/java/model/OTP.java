/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Random;

/**
 *
 * @author janice
 */
public class OTP {
    public static int generateOTP()
            {
    Random num= new Random();
       
        
        
        int otp= num.nextInt(899999)+100000;
        System.out.print(otp);
        return otp;
}
}
