/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author SonicMaster
 */
public class ReserveTicketDAO extends BaseDAO{
    
    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
    public void createPackage(Ticket t)
    {
         try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReserveTicketDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ReserveTicketDAO.class.getName()).log(Level.SEVERE, null, ex);
        }


       String sql = "insert into HR.RESERVATION values(?,?,?,?,?,?)";
        try
        {
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,t.getfname());
            preparedStatement.setString(2,t.getlname());
            preparedStatement.setString(3,t.getsource());
            preparedStatement.setString(4,t.getdest());
            preparedStatement.setDate(5,t.getStartdate());
            preparedStatement.setDate(6,t.getEnddate());
           
            
            
            int count = preparedStatement.executeUpdate();
            if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    System.out.println("insertion failed");
                }
        }
        catch (SQLException ex) {
            Logger.getLogger(ReserveTicketDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    public List viewReservation(Ticket t){
        List<Ticket> list = new ArrayList<>();
        
        try {
            connection = getConnection();
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(ReserveTicketDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        String sql = "SELECT * FROM HR.RESERVATION WHERE FNAME LIKE ? AND LNAME LIKE ?";
        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, t.getfname());
            preparedStatement.setString(2, t.getlname());
            
            rs = preparedStatement.executeQuery();
            
            while(rs.next()){
                Ticket ticket = new Ticket();
                ticket.setfname(rs.getString("FNAME"));
                ticket.setlname(rs.getString("LNAME"));
                ticket.setsource(rs.getString("SRC"));
                ticket.setdest(rs.getString("DEST"));
                ticket.setStartdate(rs.getDate("STARTDATE"));
                ticket.setEnddate(rs.getDate("ENDDATE"));
                list.add(ticket);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(ReserveTicketDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return list;
    }
}
