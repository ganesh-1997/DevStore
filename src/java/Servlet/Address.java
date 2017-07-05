/*
 * To change this license header, choose License Headers in Project Propertiep.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ganesh
 */
@WebServlet(name = "Address", urlPatterns = {"/Address"})
public class Address extends HttpServlet {
    
    private static final long serialVersionUID = 42L;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methodp.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String addressLine1 = request.getParameter("addressLine1");
        String addressLine2 = request.getParameter("addressLine2");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String pinCode = request.getParameter("pinCode");
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email");
        Model.Address p = new Model.Address();
        p.setAddressLine1(addressLine1);
        p.setAddressLine2(addressLine2);
        p.setState(state);
        p.setCity(city);
        p.setEmail(email);
        p.setPincode(pinCode);
        if (p.updateAddress() == true) {
            session.setAttribute("addressLine1", p.getAddressLine1());
            session.setAttribute("addressLine2", p.getAddressLine2());
            session.setAttribute("state", p.getState());
            session.setAttribute("city", p.getCity());
            session.setAttribute("pinCode", p.getPincode());
            session.setAttribute("addressUpdated", "true");
        } else {
            session.setAttribute("addressUpdated", "false");
        }
        response.sendRedirect("Address.jsp");
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methodp. Click on the + sign on the left to edit the code.">
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
        processRequest(request, response);
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
        processRequest(request, response);
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
