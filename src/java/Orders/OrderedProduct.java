/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Orders;

import Model.Product;
import java.sql.Timestamp;
import java.util.List;

/**
 *
 * @author Ganesh
 */
public class OrderedProduct {
    
    private String name;
    private String email;
    private String id;
    private int itemCount;
    private double cartTotal;
    private int deliveryCharge;
    private double bagTotal;
    private Timestamp deliveryDate;
    private Timestamp orderDate;
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

    public void setId(String id) {
        this.id = id;
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

    public void setDeliveryDate(Timestamp deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public void setOrderDate(Timestamp orderDate) {
        this.orderDate = orderDate;
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

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getId() {
        return id;
    }

    public int getItemCount() {
        return itemCount;
    }

    public double getCartTotal() {
        return cartTotal;
    }

    public int getDeliveryCharge() {
        return deliveryCharge;
    }

    public double getBagTotal() {
        return bagTotal;
    }

    public Timestamp getDeliveryDate() {
        return deliveryDate;
    }

    public Timestamp getOrderDate() {
        return orderDate;
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

    public String getPinCode() {
        return pinCode;
    }

    public List<Product> getProducts() {
        return products;
    }
       
}
