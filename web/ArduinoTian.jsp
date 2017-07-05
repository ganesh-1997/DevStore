<%-- 
    Document   : ArduinoTian
    Created on : 10 May, 2017, 4:45:52 PM
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
        <title>Arduino Tian - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class = "col-md-4">
                <img src = "Products/ArduinoTian.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Arduino Tian">
                            <input type="hidden" name="linkName" value="ArduinoTian">
                            <input type="hidden" name="price" value="${productDetails['Arduino Tian']}">
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
                            <input type="hidden" name="productName" value="Arduino Tian">
                            <input type="hidden" name="linkName" value="ArduinoTian">
                            <input type="hidden" name="price" value="${productDetails['Arduino Tian']}">
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
                <h2>Arduino Tian</h2>
                <h4>₹ ${productDetails['Arduino Tian']}</h4>
                Arduino Tian is powered by Atmel’s SAMD21 MCU, featuring a 32-bit ARM Cortex® M0+ core and Qualcomm Atheros AR9342,
                an highly integrated MIPS processor with feature-rich IEEE802.11n 2x2 2.4/5 GHz dual-band WiFi module.
                The Arduino Tian has also a build in 4GB eMMC memory that will can be helpful to build your projects. 
                It is possible to Switch ON/OFF the Linux port from the MCU to reduce the power consumption. 
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Architecture </td>
                            <td> MIPS & ARM Cortex-M0+ </td>
                        </tr>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 5V </td>
                        </tr>
                        <tr>
                            <td> Digital I/O Pins </td>
                            <td> 42 (12 PWM Pins) </td>
                        </tr>
                        <tr>
                            <td> Bluetooth </td>
                            <td> CSR8510, Bluetooth with EDR / BLE 4.0 </td>
                        </tr>
                        <tr>
                            <td> Wi-Fi </td>
                            <td> 802.11 b/g/n 2.4 GHz Dual Band </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>