/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import DataSource.GetDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ganesh
 */
public class AddToCart {
    
    private String email;
    private String productName;
    private String linkName;
    private double price;

    public void setEmail(String email) {
        this.email = email;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setLinkName(String linkName) {
        this.linkName = linkName;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public boolean addToCart() {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM CART WHERE PRODUCT_NAME = ? AND EMAIL = ?");
                preparedStatement.setString(1, productName);
                preparedStatement.setString(2, email);
                ResultSet rs = preparedStatement.executeQuery();
                if (!rs.next()) {
                    preparedStatement = connection.prepareStatement("INSERT INTO CART VALUES (?, ?, ?, ?)");
                    preparedStatement.setString(1, productName);
                    preparedStatement.setString(2, linkName);
                    preparedStatement.setDouble(3, price);
                    preparedStatement.setString(4, email);
                    return preparedStatement.executeUpdate() > 0;
                }
            } catch (SQLException | NamingException ex) {
            }
        return false;
    }
    
}