package Cart;

import DataSource.GetDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.sql.DataSource;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ganesh
 */
public class RemoveFromCart {
    
    private String productName;
    private String email;

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    public boolean removeFromCart() {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("DELETE FROM CART WHERE PRODUCT_NAME = ? AND EMAIL = ?");
            preparedStatement.setString(1, productName);
            preparedStatement.setString(2, email);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException | NamingException ex) {
        }
        return false;
    }
    
}