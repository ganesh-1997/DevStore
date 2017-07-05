<%-- 
    Document   : FingerPrintSensor
    Created on : 6 Apr, 2017, 11:06:31 PM
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
        <title>Finger Print Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/FingerPrintSensor.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Finger Print Sensor">
                            <input type="hidden" name="linkName" value="FingerPrintSensor">
                            <input type="hidden" name="price" value="${productDetails['Finger Print Sensor']}">
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
                            <input type="hidden" name="productName" value="Finger Print Sensor">
                            <input type="hidden" name="linkName" value="FingerPrintSensor">
                            <input type="hidden" name="price" value="${productDetails['Finger Print Sensor']}">
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
                <h2>Finger Print Sensor</h2>
                <h4>₹ ${productDetails['Finger Print Sensor']}</h4>
                The fingerprint module from ADH-Tech that communicates over TTL Serial, so you can easily embed it into your project.
                The module performs reading and identifying the fingerprints with an on-board optical sensor and 32 Bit CPU.
                All you need to do is send it simple commands.
                <br><br>
                The module can store up to 200 different fingerprints and is capable of 360° recognition.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                    <tr>
                        <td> Operating Voltage </td>
                        <td> 3.3 - 6V </td>
                    </tr>
                    <tr>
                        <td> Operating Current </td>
                        <td> < 130mA </td>
                    </tr>
                    <tr>
                        <td> Interface </td>
                        <td> UART </td>
                    </tr>
                    <tr>
                        <td> Resolution </td>
                        <td> 450 dpi </td>
                    </tr>
                    <tr>
                        <td> Maximum Count </td>
                        <td> 200 Finger Prints</td>
                    </tr>
                </tbody>
                </table>
            </div>
        </div>
    </body>
</html>