package Wishlist;

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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ganesh
 */
public class WishlistDetails  {

    public List<Product> getWishlistDetails(String email) {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        List<Product> products = new ArrayList<>();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM WISHLIST WHERE EMAIL = ?");
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductName(rs.getString(1));
                product.setLinkName(rs.getString(2));
                product.setPrice(rs.getDouble(3));
                products.add(product);                
            }
        } catch (SQLException | NamingException ex) {
        }
        return products;
    }

}