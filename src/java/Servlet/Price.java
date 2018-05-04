/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.GetPrice;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Web application lifecycle listener.
 *
 * @author Ganesh
 */

@WebListener
public class Price implements ServletContextListener {

    @Override
    public void contextInitialized(ServletContextEvent servletContextListener) {
        GetPrice p = new GetPrice();
        Map<String, Double> productDetails = p.getPrice();
        ServletContext servletContext = servletContextListener.getServletContext();
        servletContext.setAttribute("productDetails", productDetails);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
