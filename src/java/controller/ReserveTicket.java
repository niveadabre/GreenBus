/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BookingDAO;
import model.BusSearchDAO;
import model.ReserveTicketDAO;
import model.Ticket;

/**
 *
 * @author SonicMaster
 */
public class ReserveTicket extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
             Ticket t = new Ticket();
             SimpleDateFormat sdf = new SimpleDateFormat("yyyy-dd-mm");
             
             java.util.Date startDateUtil = sdf.parse(request.getParameter("going"));
             java.sql.Date startDate = new Date(startDateUtil.getTime());
             
            java.util.Date endDateUtil = sdf.parse(request.getParameter("return"));
            java.sql.Date endDate = new Date(endDateUtil.getTime());
            
           ReserveTicketDAO rt = new ReserveTicketDAO();
           t.setfname(request.getParameter("name[first]"));
           t.setlname(request.getParameter("name[last]"));
           t.setsource(request.getParameter("from"));
           t.setdest(request.getParameter("to"));
           t.setStartdate(startDate);
           t.setEnddate(endDate);
          
            BusSearchDAO bsdao = new BusSearchDAO();
           List busList = bsdao.search(t.getsource(),t.getdest());
           
           request.setAttribute("busList", busList);
           
           rt.createPackage(t);
           RequestDispatcher rd = request.getRequestDispatcher("booking.jsp");
           rd.forward(request,response);
           
           
           
          
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ReserveTicket.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ReserveTicket.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
