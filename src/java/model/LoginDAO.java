/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.PreparedStatement;

/**
 *
 * @author  */
public class LoginDAO extends BaseDAO {
    PreparedStatement preparedStatement;
    
     public static boolean checkLogin(Login l)
    {        
        if(l.getUsername().equals("raj")&& l.getPassword().equals("123"))
        {
           return true;
        }
        else
        {
            return false;
        }
    }
    
}
