<%-- 
    Document   : PulseSensor
    Created on : 6 Apr, 2017, 11:48:55 PM
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
        <title>Pulse Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/PulseSensor.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Pulse Sensor">
                            <input type="hidden" name="linkName" value="PulseSensor">
                            <input type="hidden" name="price" value="${productDetails['Pulse Sensor']}">
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
                            <input type="hidden" name="productName" value="Pulse Sensor">
                            <input type="hidden" name="linkName" value="PulseSensor">
                            <input type="hidden" name="price" value="${productDetails['Pulse Sensor']}">
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
                <h2>Pulse Sensor </b></h2>
                <h4>₹ ${productDetails['Pulse Sensor']}</h4>
                Heart rate data can be really useful whether you’re designing an exercise routine, studying your activity or anxiety levels or just want your shirt to blink with your heart beat. 
                The problem is that heart rate can be difficult to measure. Luckily, the Pulse Sensor can solve that problem!
                <br><br>
                The Pulse Sensor is a plug-and-play heart-rate sensor for Arduino. 
                It combines a simple optical heart rate sensor with amplification and noise cancellation circuitry making it fast and easy to get reliable pulse readings.
                Simply clip the Pulse Sensor to your earlobe or finger tip and plug it into your 3 or 5 Volt Arduino and you’re ready to read heart rate! 
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 3 - 5V </td>
                        </tr>
                        <tr>
                            <td> Features </td>
                            <td> Ear Clip for Earlobe Heart Rate Measurement, Velcro Finger Strap </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>