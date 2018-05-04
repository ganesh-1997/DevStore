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
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ganesh
 */
public class SignIn {

    private String name;
    private String number;
    private String email;
    private String password;
    private String addressLine1;
    private String addressLine2;
    private String state;
    private String city;
    private String pinCode;
    
    public String getName() {
        return name;
    }

    public String getNumber() {
        return number;
    }
    
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public String getState() {
        return state;
    }

    public String getCity() {
        return city;
    }

    public String getPincode() {
        return pinCode;
    }

    public boolean verifyData() {
        Pattern p = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);
        Matcher m = p.matcher(email);
        return m.matches() && email.length() < 35
                && (password.length() <= 20 && password.length() >= 6);
    }

    public boolean validateDetails() {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM USERS WHERE EMAIL = ? AND PASSWORD = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                this.name = rs.getString("NAME");
                this.email = rs.getString("EMAIL");
                this.number = rs.getString("NUMBER");
                this.password = rs.getString("PASSWORD");
                this.addressLine1 = rs.getString("ADDRESSLINE1");
                this.addressLine2 = rs.getString("ADDRESSLINE2");
                this.state = rs.getString("STATE");
                this.city = rs.getString("CITY");
                this.pinCode = rs.getString("PINCODE");
                return true;
            }
        } catch (NamingException | SQLException ex) {
        }
        return false;
    }

}