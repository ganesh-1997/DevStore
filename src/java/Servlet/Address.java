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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        Model.Address p = new Model.Address();
        HttpSession session = request.getSession();
        /*Filtering URL Request*/
        if (request.getParameter("addressLine1") != null
                && request.getParameter("addressLine2") != null
                && request.getParameter("state") != null
                && request.getParameter("city") != null
                && request.getParameter("pinCode") != null
                && session.getAttribute("email") != null) {
            p.setAddressLine1(request.getParameter("addressLine1"));
            if (p.getAddressLine1().length() < 6) {
                p.setAddressLine1((String) session.getAttribute("addressLine1"));
            }
            p.setAddressLine2(request.getParameter("addressLine2"));
            if (p.getAddressLine2().length() < 6) {
                p.setAddressLine2((String) session.getAttribute("addressLine2"));
            }
            p.setState(request.getParameter("state"));
            if (p.getState().length() < 6) {
                p.setState((String) session.getAttribute("state"));
            }
            p.setCity(request.getParameter("city"));
            if (p.getCity().length() < 6) {
                p.setCity((String) session.getAttribute("city"));
            }
            p.setPincode(request.getParameter("pinCode"));
            if (p.getPincode().length() < 6) {
                p.setPincode((String) session.getAttribute("pinCode"));
            }
            p.setEmail((String) session.getAttribute("email"));
            if (p.updateAddress()) {
                session.setAttribute("addressLine1", p.getAddressLine1());
                session.setAttribute("addressLine2", p.getAddressLine2());
                session.setAttribute("state", p.getState());
                session.setAttribute("city", p.getCity());
                session.setAttribute("pinCode", p.getPincode());
                session.setAttribute("addressUpdated", "true");
            } else {
                session.setAttribute("addressUpdated", "false");
            }
            request.getRequestDispatcher("Address.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("Shop.jsp").forward(request, response);
        }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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