<%-- 
    Document   : ArduinoMega
    Created on : 6 Apr, 2017, 5:22:37 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Product.css">
        <title>Arduino Mega - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Arduino Mega</h2>
                    <h4>₹ ${productDetails['Arduino Mega']}</h4>
                </div>
                <img src="Products/ArduinoMega.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Arduino Mega">
                            <input type="hidden" name="linkName" value="ArduinoMega">
                            <input type="hidden" name="price" value="${productDetails['Arduino Mega']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fas fa-shopping-cart"></i> Add to Bag
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fas fa-shopping-cart"></i> Add to Bag
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <form action="WishlistAdd" method="post">
                            <input type="hidden" name="productName" value="Arduino Mega">
                            <input type="hidden" name="linkName" value="ArduinoMega">
                            <input type="hidden" name="price" value="${productDetails['Arduino Mega']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="far fa-bookmark"></i> Save
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="far fa-bookmark"></i> Save
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 mx-auto">
                <div class="col-12 d-none d-md-block d-lg-block mx-auto">
                    <h2>Arduino Mega</h2>
                    <h4>₹ ${productDetails['Arduino Mega']}</h4>
                </div>
                The Arduino Mega is a microcontroller board based on ATmega2560.
                It has 54 digital I/O pins, 16 analog pins, 4 UARTs, a 16 MHz oscillator, a USB connection, a power jack, an ICSP header, and a reset button.
                It contains everything needed to support the microcontroller. Simply connect it to a computer with a USB cable to get started.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Microcontroller </td>
                            <td> ATmega2560 </td>
                        </tr>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 5V </td>
                        </tr>
                        <tr>
                            <td> Digital I/O Pins </td>
                            <td> 54 (14 PWM Pins) </td>
                        </tr>
                        <tr>
                            <td> Analog Input Pins </td>
                            <td> 16 </td>
                        </tr>
                        <tr>
                            <td> Memory </td>
                            <td> 256k Flash </td>
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