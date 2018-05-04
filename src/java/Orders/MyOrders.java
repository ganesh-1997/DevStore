/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Orders;

import DataSource.GetDataSource;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ganesh
 */
public class MyOrders {
    
    private String email;
    
    public void setEmail(String email) {
        this.email = email;
    }
    
    public List<OrderedProduct> getOrder() {
        List<OrderedProduct> orders = new ArrayList<>();
        List<Product> products;
        OrderedProduct p;
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM ORDERS WHERE EMAIL = ? ORDER BY ORDER_DATE DESC");
            preparedStatement.setString(1, email);
            ResultSet orderResultSet = preparedStatement.executeQuery();
            ResultSet orderDetailsResultSet;
            while (orderResultSet.next()) {
                p = new OrderedProduct();
                products = new ArrayList<>();
                p.setName(orderResultSet.getString(1));
                p.setEmail(orderResultSet.getString(2));
                String id = orderResultSet.getString(3);
                p.setId(id);
                p.setItemCount(orderResultSet.getInt(4));
                p.setCartTotal(orderResultSet.getDouble(5));
                p.setDeliveryCharge(orderResultSet.getInt(6));
                p.setBagTotal(orderResultSet.getDouble(7));
                p.setDeliveryDate(orderResultSet.getTimestamp(8));
                p.setOrderDate(orderResultSet.getTimestamp(9));
                p.setAddressLine1(orderResultSet.getString(10));
                p.setAddressLine2(orderResultSet.getString(11));
                p.setState(orderResultSet.getString(12));
                p.setCity(orderResultSet.getString(13));
                p.setPinCode(orderResultSet.getString(14));
                orderDetailsResultSet = getOrderDetails(id);
                while (orderDetailsResultSet.next()) {
                    Product product = new Product();
                    product.setProductName(orderDetailsResultSet.getString(2));
                    product.setLinkName(orderDetailsResultSet.getString(3));
                    product.setPrice(orderDetailsResultSet.getDouble(4));
                    products.add(product);
                }
                p.setProducts(products);
                orders.add(p);
            }
            return orders;
        } catch (NamingException | SQLException ex) {
        }
        return null;
    }
    
    private ResultSet getOrderDetails(String id) {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM ORDER_DETAILS WHERE ID = ?");
            preparedStatement.setString(1, id);
            return preparedStatement.executeQuery();
        } catch (NamingException | SQLException ex) {
        }
        return null;
    }
    
}