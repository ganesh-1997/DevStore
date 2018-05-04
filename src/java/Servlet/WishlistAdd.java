/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Wishlist.AddToWishlist;
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
@WebServlet(name = "WishlistAdd", urlPatterns = {"/WishlistAdd"})

public class WishlistAdd extends HttpServlet {

    private static final long serialVersionUID = 42L;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        AddToWishlist a = new AddToWishlist();
        HttpSession session = request.getSession();
        if (request.getSession().getAttribute("email") != null
                && request.getParameter("productName") != null
                && request.getParameter("linkName") != null
                && request.getParameter("price") != null) {
            a.setEmail((String) request.getSession().getAttribute("email"));
            a.setProductName(request.getParameter("productName"));
            a.setLinkName(request.getParameter("linkName"));
            a.setPrice(Double.valueOf(request.getParameter("price")));
            if (a.addToWishlist()) {
                session.setAttribute("addToList", "true");
            } else {
                session.setAttribute("addToList", "false");
            }
            request.getRequestDispatcher("Wishlist").forward(request, response);
        } else {
            request.getRequestDispatcher("/Shop.jsp").forward(request, response);
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