<%-- 
    Document   : RFM69HCW
    Created on : 6 Apr, 2017, 7:15:37 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Product.css">
        <title>RFM69HCW Transceiver - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/RFM69HCW.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="RFM69HCW">
                            <input type="hidden" name="linkName" value="RFM69HCW">
                            <input type="hidden" name="price" value="${productDetails['RFM69HCW']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to Cart
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to Cart
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                    <div class = "col-md-6">
                        <form action="WishlistAdd" method="post">
                            <input type="hidden" name="productName" value="RFM69HCW">
                            <input type="hidden" name="linkName" value="RFM69HCW">
                            <input type="hidden" name="price" value="${productDetails['RFM69HCW']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fa fa-bookmark-o" aria-hidden="true"></i> Add to Wishlist
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fa fa-bookmark-o" aria-hidden="true"></i> Add to Wishlist
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h2>RFM69HCW Transceiver</h2>
                <h4>₹ ${productDetails['RFM69HCW']}</h4>
                The RFM69HCW is an inexpensive and versatile radio module that operates in the unlicensed ISM band, a set of frequencies set aside for low-power, short-range, license-free radios.
                It’s perfect for building inexpensive short-range wireless networks of sensors and actuators for home automation, citizen science and more.
                <br><br>
                This RFM69HCW module operates on the 434MHz frequency and is capable of transmitting at up to 100mW and up to 300kbps, but you can change both of those values to fit your application.
                In open air you can reach 500m or more.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Output Power </td>
                            <td> 100mW </td>
                        </tr>
                        <tr>
                            <td> Sensitivity </td>
                            <td> Down to -120 dBm at 1.2 kbps </td>
                        </tr>
                        <tr>
                            <td> Selectivity </td>
                            <td> 16 Tap FIR Channel Filter </td>
                        </tr>
                        <tr>
                            <td> Bit Rate </td>
                            <td> 300kbps </td>
                        </tr>
                        <tr>
                            <td> Modulations </td>
                            <td> FSK, GFSK, MSK, GMSK, OOK </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>