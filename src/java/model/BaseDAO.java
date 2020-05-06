package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author universe
 */
public class BaseDAO {
    private Connection con;
    public Connection getConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("org.postgresql.Driver"); //load the driver
        con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Bus_Reserve","postgres","niv");//getConnection(location of the database,username,password)
        return con;
    }
}