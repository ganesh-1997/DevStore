<%-- 
    Document   : ArduinoUNO
    Created on : 6 Apr, 2017, 4:44:59 PM
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
        <title>Arduino UNO - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Arduino UNO</h2>
                    <h4>₹ ${productDetails['Arduino UNO']}</h4>
                </div>
                <img src="Products/ArduinoUNO.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Arduino UNO">
                            <input type="hidden" name="linkName" value="ArduinoUNO">
                            <input type="hidden" name="price" value="${productDetails['Arduino UNO']}">
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
                            <input type="hidden" name="productName" value="Arduino UNO">
                            <input type="hidden" name="linkName" value="ArduinoUNO">
                            <input type="hidden" name="price" value="${productDetails['Arduino UNO']}">
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
                    <h2>Arduino UNO</h2>
                    <h4>₹ ${productDetails['Arduino UNO']}</h4>
                </div>
                Arduino UNO is the ideal board for getting started with electronics, through fun and engaging hands-on projects.
                Arduino UNO is the most used and documented board in the Arduino family.
                <br><br>
                Arduino UNO is a microcontroller board based on ATmega328, an 8-bit microcontroller with 32kB of Flash memory and 2kB of RAM. 
                It contains everything needed to support the microcontroller; simply connect it to a computer with a USB cable to get started.
                The UNO board is the first in a series of USB boards and it is the reference model for the Arduino platform.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Microcontroller </td>
                            <td> ATmega328 </td>
                        </tr>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 5V </td>
                        </tr>
                        <tr>
                            <td> Digital I/O Pins </td>
                            <td> 14 (6 PWM Pins) </td>
                        </tr>
                        <tr>
                            <td> Analog Input Pins </td>
                            <td> 6 </td>
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