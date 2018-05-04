<%-- 
    Document   : ArduinoDue
    Created on : 10 May, 2017, 4:37:55 PM
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
        <title>Arduino Due - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Arduino Due</h2>
                    <h4>₹ ${productDetails['Arduino Due']}</h4>
                </div>
                <img src="Products/ArduinoDue.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Arduino Due">
                            <input type="hidden" name="linkName" value="ArduinoDue">
                            <input type="hidden" name="price" value="${productDetails['Arduino Due']}">
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
                            <input type="hidden" name="productName" value="Arduino Due">
                            <input type="hidden" name="linkName" value="ArduinoDue">
                            <input type="hidden" name="price" value="${productDetails['Arduino Due']}">
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
                    <h2>Arduino Due</h2>
                    <h4>₹ ${productDetails['Arduino Due']}</h4>
                </div>
                The Arduino Due is a microcontroller board based on the Atmel SAM3X8E ARM Cortex-M3 CPU.
                It has 54 digital I/O pins, 12 analog inputs, 4 UARTs, an SPI header, a JTAG header.
                The Arduino Due board runs at 3.3V.
                Simply connect it to a computer with a USB cable to get started.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Microcontroller </td>
                            <td> AT91SAM3X8E </td>
                        </tr>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 3.3V </td>
                        </tr>
                        <tr>
                            <td> Digital I/O Pins </td>
                            <td> 54 (12 PWM Pins) </td>
                        </tr>
                        <tr>
                            <td> Analog Input Pins </td>
                            <td> 12 </td>
                        </tr>
                        <tr>
                            <td> Memory </td>
                            <td> 96k Flash </td>
                        </tr>
                        <tr>
                            <td> Clock </td>
                            <td> 84 MHz </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>