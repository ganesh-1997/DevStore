/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Wishlist.MoveToWishlist;
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
@WebServlet(name = "MovetoWishlist", urlPatterns = {"/MovetoWishlist"})
public class MovetoWishlist extends HttpServlet {

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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        MoveToWishlist m = new MoveToWishlist();
        HttpSession session = request.getSession();
        /*Filtering URL Request*/
        if (session.getAttribute("email") != null
                && request.getParameter("productName") != null
                && request.getParameter("linkName") != null
                && request.getParameter("price") != null) {
            m.setEmail((String) session.getAttribute("email"));
            m.setProductName(request.getParameter("productName"));
            m.setLinkName(request.getParameter("linkName"));
            m.setPrice(Double.parseDouble(request.getParameter("price")));
            if (m.moveToWishlist()) {
                session.setAttribute("moveToList", "true");
            } else {
                session.setAttribute("moveToList", "false");
            }
            request.getRequestDispatcher("Cart").forward(request, response);
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