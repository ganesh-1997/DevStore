/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DataSource.GetDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ganesh
 */
public class GetPrice {

    public Map<String, Double> getPrice() {
        DataSource dataSource;
        Map<String, Double> productDetails = new LinkedHashMap<>();
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT PRODUCT_NAME, PRICE FROM PRODUCTS");
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()) {
                productDetails.put(resultSet.getString(1), resultSet.getDouble(2));
            }
        } catch (SQLException | NamingException e) {
        }
        return productDetails;
    }

}
