/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

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
public class CartDetails {

    private double bagTotal;
    private double cartTotal;
    private int itemCount;
    private int deliveryCharge;

    public double getBagTotal() {
        return bagTotal;
    }

    public double getCartTotal() {
        return cartTotal;
    }

    public int getItemCount() {
        return itemCount;
    }

    public int getDeliveryCharge() {
        return deliveryCharge;
    }

    public List<Product> getCartDetails(String email) {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        List<Product> products = new ArrayList<>();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM CART WHERE EMAIL = ?");
            preparedStatement.setString(1, email);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                Product product = new Product();
                product.setProductName(rs.getString(1));
                product.setLinkName(rs.getString(2));
                product.setPrice(rs.getDouble(3));
                bagTotal = bagTotal + rs.getDouble(3);
                itemCount = itemCount + 1;
                products.add(product);
            }
            if (itemCount > 0 && bagTotal < 500) {
                deliveryCharge = 100;
            }
            if (bagTotal < 500) {
                cartTotal = bagTotal + deliveryCharge;
            } else {
                cartTotal = bagTotal;
            }
        } catch (SQLException | NamingException ex) {
        }
        return products;
    }

}