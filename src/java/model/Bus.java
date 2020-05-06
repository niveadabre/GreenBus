/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author Nivea Dabre
 */
public class Bus {
    int busID;
    float fare;
    String src, dest, busoperator;

    public int getBusID() {
        return busID;
    }

    public void setBusID(int busID) {
        this.busID = busID;
    }

    public float getFare() {
        return fare;
    }

    public void setFare(float fare) {
        this.fare = fare;
    }

    public String getSrc() {
        return src;
    }

    public void setSrc(String src) {
        this.src = src;
    }

    public String getDest() {
        return dest;
    }

    public void setDest(String dest) {
        this.dest = dest;
    }

    public String getBusoperator() {
        return busoperator;
    }

    public void setBusoperator(String busoperator) {
        this.busoperator = busoperator;
    }

  
}
