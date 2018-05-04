/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Product;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "Order", urlPatterns = {"/Order"})

public class Order extends HttpServlet {

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
        @SuppressWarnings("unchecked")
        Orders.Order order = new Orders.Order();
        HttpSession session = request.getSession();
        try {
            /*Filtering URL Request*/
            if (session.getAttribute("email") != null
                    && session.getAttribute("itemCount") != null
                    && session.getAttribute("cartTotal") != null
                    && session.getAttribute("deliveryCharge") != null
                    && session.getAttribute("bagTotal") != null) {
                /*User Details*/
                order.setName((String) session.getAttribute("name"));
                order.setEmail((String) session.getAttribute("email"));
                order.setId();
                /*Bag Details*/
                order.setItemCount((Integer) session.getAttribute("itemCount"));
                order.setCartTotal((Double) session.getAttribute("cartTotal"));
                order.setDeliveryCharge((Integer) session.getAttribute("deliveryCharge"));
                order.setBagTotal((Double) session.getAttribute("bagTotal"));
                /*Address*/
                order.setAddressLine1((String) session.getAttribute("addressLine1"));
                order.setAddressLine2((String) session.getAttribute("addressLine2"));
                order.setState((String) session.getAttribute("state"));
                order.setCity((String) session.getAttribute("city"));
                order.setPinCode((String) session.getAttribute("pinCode"));
                /*Products*/
                @SuppressWarnings("unchecked")
                List<Product> products = (List<Product>) session.getAttribute("products");
                order.setProducts(products);
                if (order.placeOrder()) {
                    session.setAttribute("orderPlaced", true);
                } else {
                    session.setAttribute("orderPlaced", false);
                }
            } else {
                request.getRequestDispatcher("Shop.jsp").forward(request, response);
            }
            request.getRequestDispatcher("Orders").forward(request, response);
        } catch (Exception ex) {
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
