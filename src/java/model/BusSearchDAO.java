/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

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
 * @author Nivea Dabre
 */
public class BusSearchDAO extends BaseDAO {
    
    Connection conn;
    PreparedStatement preparedStatement;
    ResultSet rs;
    
    public List search(String s,String d)
    {
        List list = new ArrayList<>();
        try {
            conn = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(BusSearchDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(BusSearchDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        String sql = "select * from hr.buses where source like ? and dest like ?";
        
        try {
            preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, s);
            preparedStatement.setString(2, d);
            
            rs = preparedStatement.executeQuery();
            while(rs.next()){
                Bus b = new Bus();
                
                b.setBusID(rs.getInt(1));
                b.setSrc(rs.getString(2));
                b.setDest(rs.getString(3));
                b.setBusoperator(rs.getString(4));
                b.setFare(rs.getFloat(5));
               
                list.add(b);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(BusSearchDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
 
        return list;
    }
    
}
