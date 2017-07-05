/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Orders;

import DataSource.GetDataSource;
import Cart.RemoveFromCart;
import Model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author Ganesh
 */
public class Order {

    private String name;
    private String email;
    private String id;
    private int itemCount;
    private double cartTotal;
    private int deliveryCharge;
    private double bagTotal;
    private String addressLine1;
    private String addressLine2;
    private String state;
    private String city;
    private String pinCode;
    private List<Product> products;

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setId() {
        UUID uniqueKey = UUID.randomUUID();
        this.id = uniqueKey.toString().toUpperCase();
    }

    public void setItemCount(int itemCount) {
        this.itemCount = itemCount;
    }

    public void setCartTotal(double cartTotal) {
        this.cartTotal = cartTotal;
    }

    public void setDeliveryCharge(int deliveryCharge) {
        this.deliveryCharge = deliveryCharge;
    }

    public void setBagTotal(double bagTotal) {
        this.bagTotal = bagTotal;
    }

    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

    public void setAddressLine2(String addressLine2) {
        this.addressLine2 = addressLine2;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public void setPinCode(String pinCode) {
        this.pinCode = pinCode;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }

    public boolean placeOrder() {
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO ORDERS VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, id);
            preparedStatement.setInt(4, itemCount);
            preparedStatement.setDouble(5, cartTotal);
            preparedStatement.setInt(6, deliveryCharge);
            preparedStatement.setDouble(7, bagTotal);
            preparedStatement.setTimestamp(8, getDeliveryDate());
            preparedStatement.setTimestamp(9, getOrderedDate());
            preparedStatement.setString(10, addressLine1);
            preparedStatement.setString(11, addressLine2);
            preparedStatement.setString(12, state);
            preparedStatement.setString(13, city);
            preparedStatement.setString(14, pinCode);
            preparedStatement.executeUpdate();
            addOrderProducts();
        } catch (NamingException | SQLException ex) {
        }
        return false;
    }

    private boolean addOrderProducts() {
        RemoveFromCart r = new RemoveFromCart();
        r.setEmail(email);
        DataSource dataSource;
        GetDataSource d = new GetDataSource();
        try {
            dataSource = d.getDataSource();
            Connection connection = dataSource.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO ORDER_DETAILS VALUES (?, ?, ?, ?)");
            for (Iterator<Product> it = products.iterator(); it.hasNext();) {
                Product product = it.next();
                preparedStatement.setString(1, id);
                preparedStatement.setString(2, product.getProductName());
                preparedStatement.setString(3, product.getLinkName());
                preparedStatement.setDouble(4, product.getPrice());
                preparedStatement.executeUpdate();
                r.setProductName(product.getProductName());
                r.removeFromCart();
            }
            return true;
        } catch (SQLException | NamingException ex) {
        }
        return false;
    }

    private Timestamp getDeliveryDate() {
        long time = System.currentTimeMillis();
        Timestamp timeStamp = new Timestamp(time);
        Calendar cal = Calendar.getInstance();
        cal.setTime(timeStamp);
        cal.add(Calendar.DAY_OF_WEEK, 4);
        timeStamp.setTime(cal.getTime().getTime());
        return timeStamp;
    }

    private Timestamp getOrderedDate() {
        return Timestamp.from(java.time.Instant.now());
    }
}
