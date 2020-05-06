/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.EmailSender;
import model.OTP;

/**
 *
 * @author janice
 */
public class rnumberServlet extends HttpServlet {
   

  
RequestDispatcher view;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
             
  
            /* TODO output your page here. You may use following sample code. */
           
           int otp = OTP.generateOTP();
           String email = request.getParameter("EmailId");
           System.out.println("email = " + email + otp);
          EmailSender. sendEmail(email,otp);
           //request.setAttribute("otp",otp);
           //view=request.getRequestDispatcher("Verify.jsp");
           //view.forward(request, response);

           
           
        }
    }

}