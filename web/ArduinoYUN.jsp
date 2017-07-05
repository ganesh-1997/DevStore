<%-- 
    Document   : ArduinoYUN
    Created on : 6 Apr, 2017, 5:30:48 PM
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
        <title>Arduino YUN - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class = "col-md-4">
                <img src = "Products/ArduinoYUN.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Arduino YUN">
                            <input type="hidden" name="linkName" value="ArduinoYUN">
                            <input type="hidden" name="price" value="${productDetails['Arduino YUN']}">
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
                            <input type="hidden" name="productName" value="Arduino YUN">
                            <input type="hidden" name="linkName" value="ArduinoYUN">
                            <input type="hidden" name="price" value="${productDetails['Arduino YUN']}">
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
                <h2>Arduino YUN</h2>
                <h4>₹ ${productDetails['Arduino YUN']}</h4>
                Arduino YUN is a member of a new groundbreaking line of Wi-Fi products combining the power of Linux with the ease of use of Arduino.
                <br><br>
                The Arduino YUN is the combination of a classic Arduino YUN with a Wi-Fi system-on-chip running OpenWrt-Yun (a GNU/Linux distribution based on OpenWrt).
                We embedded the Linux machine directly on the PCB of the Arduino YUN and we connected the two so that from Arduino. 
                It's very easy to run commands on Linux and can be used as an Ethernet and Wi-Fi interface.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                    <tr>
                        <td> Microcontroller </td>
                        <td> ATmega32u4 </td>
                    </tr>
                    <tr>
                        <td> Operating Voltage </td>
                        <td> 5V </td>
                    </tr>
                    <tr>
                        <td> Digital I/O Pins </td>
                        <td> 20 (7 PWM Pins) </td>
                    </tr>
                    <tr>
                        <td> Analog Input Pins </td>
                        <td> 12 </td>
                    </tr>
                    <tr>
                        <td> Memory </td>
                        <td> 32k Flash </td>
                    </tr>
                    <tr>
                        <td> Clock </td>
                        <td> 16 MHz </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>