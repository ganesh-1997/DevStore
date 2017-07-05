<%-- 
    Document   : ArduinoLeonardo
    Created on : 6 Apr, 2017, 5:39:34 PM
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
        <title>Arduino Leonardo - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/ArduinoLeonardo.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Arduino Leonardo">
                            <input type="hidden" name="linkName" value="ArduinoLeonardo">
                            <input type="hidden" name="price" value="${productDetails['Arduino Leonardo']}">
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
                            <input type="hidden" name="productName" value="Arduino Leonardo">
                            <input type="hidden" name="linkName" value="ArduinoLeonardo">
                            <input type="hidden" name="price" value="${productDetails['Arduino Leonardo']}">
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
                <h2>Arduino Leonardo</h2>
                <h4>₹ ${productDetails['Arduino Leonardo']}</h4>
                The Arduino Leonardo is a microcontroller board based on ATmega32u4.
                It has 20 digital I/O pins, a 16 MHz crystal oscillator, a micro USB connection, a power jack, an ICSP header, and a reset button.
                Simply connect it to a computer with a USB cable to get started. 
                <br><br>
                The Leonardo differs from all preceding boards in that the ATmega32u4 has built-in USB communication, eliminating the need for a secondary processor. 
                This allows the Leonardo to appear to a connected computer as a mouse and keyboard, in addition to a virtual (CDC) serial port.
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