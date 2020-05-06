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
 * @author universe
 */
public class RegisterMasterDAO  extends  BaseDAO{
    Connection connection;
    PreparedStatement preparedStatement;
    Statement statement;
    ResultSet rs;
    public void createAccount(Register r)
    {
        try {
            connection = getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }


       String sql = "insert into HR.CUSTOMER values(?,?,?,?,?,?)";
        try
        {
            preparedStatement= connection.prepareStatement(sql);
            preparedStatement.setString(1,r.getFirstname());
            preparedStatement.setString(2,r.getLastname());
            preparedStatement.setString(3,r.getGender());
            preparedStatement.setString(4,r.getEmail());            		
            preparedStatement.setString(5,r.getUsername());
            preparedStatement.setString(6,r.getPassword());
            
            int count = preparedStatement.executeUpdate();
            if(count>0)
                {
                    System.out.println("Successfully Inserted");
                }else{
                    System.out.println("insertion failed");
                }
        }
        catch (SQLException ex) {
            Logger.getLogger(RegisterMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
     public  boolean checkLogin(Register r)
    {
        try {
            connection=getConnection();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
           String sql = "select * from HR.CUSTOMER where username= ? AND password= ?";
        try {
                preparedStatement = connection.prepareStatement(sql);
                
                preparedStatement.setString(1,r.getUsername());
                
                preparedStatement.setString(2,r.getPassword());
            
                rs=preparedStatement.executeQuery();
                while( rs.next())
              {
              return true;
              }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterMasterDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
       
         return false;
    }
}
