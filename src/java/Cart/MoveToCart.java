/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import Wishlist.RemoveFromWishlist;

/**
 *
 * @author Ganesh
 */
public class MoveToCart {
    
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
    
    public boolean moveToCart() {
        RemoveFromWishlist removeFromWishlist = new RemoveFromWishlist();
        removeFromWishlist.setEmail(email);
        removeFromWishlist.setProductName(productName);
        AddToCart addToCart = new AddToCart();
        addToCart.setEmail(email);
        addToCart.setProductName(productName);
        addToCart.setLinkName(linkName);
        addToCart.setPrice(price);
        return removeFromWishlist.removeFromWishlist() && addToCart.addToCart();
    }
    
}