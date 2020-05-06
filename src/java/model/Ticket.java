/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Date;

/**
 *
 * @author SonicMaster
 */
public class Ticket {
    String fname,lname,source,dest;
    Date startdate,enddate;
    
     public String getfname() {
        return fname;
    }

    public Date getStartdate() {
        return startdate;
    }

    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    public Date getEnddate() {
        return enddate;
    }

    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    
    

    public void setfname(String fname) {
        this.fname = fname;
    }

    public String getlname() {
        return lname;
    }

    public void setlname(String lname) {
        this.lname = lname;
    }

    public String getsource() {
        return source;
    }

    public void setsource(String source) {
        this.source = source;
    }

    public String getdest() {
        return dest;
    }

    public void setdest(String dest) {
        this.dest = dest;
    }

        
}
