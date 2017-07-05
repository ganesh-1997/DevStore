<%-- 
    Document   : ESP8266
    Created on : 6 Apr, 2017, 7:32:56 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Product.css">
        <title>ESP8266 - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/ESP8266.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="ESP8266">
                            <input type="hidden" name="linkName" value="ESP8266">
                            <input type="hidden" name="price" value="${productDetails['ESP8266']}">
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
                            <input type="hidden" name="productName" value="ESP8266">
                            <input type="hidden" name="linkName" value="ESP8266">
                            <input type="hidden" name="price" value="${productDetails['ESP8266']}">
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
                <h2>ESP8266</h2>
                <h4>₹ ${productDetails['ESP8266']}</h4>
                The ESP8266 Wi-Fi Module is a self contained SOC with integrated TCP/IP protocol stack that can give any microcontroller access to your Wi-Fi network.
                The ESP8266 is capable of either hosting an application or offloading all Wi-Fi networking functions from another application processor. 
                <br><br>
                This module has a powerful enough on-board processing and storage capability that allows it to be integrated with the sensors and other application specific devices through its GPIOs with minimal development up-front and minimal loading during runtime. 
                <br><br>
                The ESP8266 Module is not capable of logic shifting and requires an external 
                <a href = "LogicLevelConverter.jsp" target="_blank"> Logic Level Converter</a>.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Interface </td>
                            <td> SDIO 1.1/2.0, SPI, UART </td>
                        </tr>
                        <tr>
                            <td> Memory </td>
                            <td> 1MB Flash </td>
                        </tr>
                        <tr>
                            <td> Output Power </td>
                            <td> +19.5dBm in 802.11b </td>
                        </tr>
                        <tr>
                            <td> Input Voltage </td>
                            <td> 3.3V </td>
                        </tr>
                        <tr>
                            <td> Analog Input Pins </td>
                            <td> 6 </td>
                        </tr>
                        <tr>
                            <td> Wireless </td>
                            <td> 802.11 b/g/n </td>
                        </tr>
                        <tr>
                            <td> Protocol </td>
                            <td> TCP/IP </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>