/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Wishlist;

import Cart.RemoveFromCart;

/**
 *
 * @author Ganesh
 */
public class MoveToWishlist {

    private String email;
    private String productName;
    private String linkName;
    private double price;

    public void setEmail(String email) {
        this.email = email;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setLinkName(String linkName) {
        this.linkName = linkName;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
    public boolean moveToWishlist() {
        RemoveFromCart removeFromCart = new RemoveFromCart();
        removeFromCart.setEmail(email);
        removeFromCart.setProductName(productName);
        AddToWishlist addToWishlist = new AddToWishlist();
        addToWishlist.setEmail(email);
        addToWishlist.setProductName(productName);
        addToWishlist.setLinkName(linkName);
        addToWishlist.setPrice(price);
        return removeFromCart.removeFromCart() && addToWishlist.addToWishlist();
    }
    
}