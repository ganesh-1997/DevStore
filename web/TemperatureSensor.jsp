<%-- 
    Document   : TemperatureSensor
    Created on : 6 Apr, 2017, 11:20:37 PM
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
        <title>Temperature Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/TemperatureSensor.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Temperature Sensor">
                            <input type="hidden" name="linkName" value="TemperatureSensor">
                            <input type="hidden" name="price" value="${productDetails['Temperature Sensor']}">
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
                            <input type="hidden" name="productName" value="Temperature Sensor">
                            <input type="hidden" name="linkName" value="TemperatureSensor">
                            <input type="hidden" name="price" value="${productDetails['Temperature Sensor']}">
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
                <h2>Temperature Sensor</h2>
                <h4>₹ ${productDetails['Temperature Sensor']}</h4>
                The DHT-22 is a low cost humidity and temperature sensor with a single wire digital interface.
                The sensor is calibrated and doesn’t require extra components so you can use it to measure relative humidity and temperature.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 3 - 3.6V </td>
                        </tr>
                        <tr>
                            <td> Operating Current </td>
                            <td> 1 - 1.5mA </td>
                        </tr>
                        <tr>
                            <td> Range </td>
                            <td> 0 to 100% RH </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>