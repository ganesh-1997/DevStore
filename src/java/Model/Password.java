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
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ganesh
 */
public class Password {

    private String oldPassword;
    private String newPassword;
    private String confirmPassword;
    private String email;

    public void setOldPassword(String oldPassword) {
        this.oldPassword = oldPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean checkPassword() {
        return (newPassword.equals(confirmPassword))
                && (oldPassword.length() <= 20 && oldPassword.length() >= 6)
                && (newPassword.length() <= 20 && newPassword.length() >= 6)
                && (confirmPassword.length() <= 20 && confirmPassword.length() >= 6);
    }

    public boolean updatePassword() {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("SELECT * FROM USERS WHERE EMAIL = ? AND PASSWORD = ?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, oldPassword);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                preparedStatement = connection.prepareStatement("UPDATE USERS SET PASSWORD = ? WHERE EMAIL = ?");
                preparedStatement.setString(1, newPassword);
                preparedStatement.setString(2, email);
                return preparedStatement.executeUpdate() > 0;
            }
        } catch (NamingException | SQLException ex) {
        }
        return false;
    }

}