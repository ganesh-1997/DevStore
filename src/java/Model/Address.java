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
public class Address {

    private String email;
    private String addressLine1;
    private String addressLine2;
    private String state;
    private String city;
    private String pinCode;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPincode() {
        return pinCode;
    }

    public void setPincode(String pinCode) {
        this.pinCode = pinCode;
    }

    public boolean updateAddress() {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("UPDATE USERS SET ADDRESSLINE1=?, ADDRESSLINE2=?, STATE=?, CITY=?, PINCODE=? WHERE EMAIL = ?");
            preparedStatement.setString(1, addressLine1);
            preparedStatement.setString(2, addressLine2);
            preparedStatement.setString(3, state);
            preparedStatement.setString(4, city);
            preparedStatement.setString(5, pinCode);
            preparedStatement.setString(6, email);
            return preparedStatement.executeUpdate() > 0;
        } catch (NamingException | SQLException ex) {
        }
        return false;
    }

}