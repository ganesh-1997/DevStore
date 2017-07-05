/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import DataSource.GetDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ganesh
 */
public class Profile {

    private String email;
    private String number;

    public void setEmail(String email) {
        this.email = email;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public boolean checkNumber() {
        return (number.matches("[0-9]+") && number.length() == 10);
    }

    public boolean updateNumber() {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE USERS SET NUMBER = ? WHERE EMAIL = ?");
            preparedStatement.setString(1, number);
            preparedStatement.setString(2, email);
            return preparedStatement.executeUpdate() > 0;
        } catch (NamingException | SQLException ex) {
        }
        return false;
    }

}