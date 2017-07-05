<%-- 
    Document   : ProximitySensor
    Created on : 10 May, 2017, 7:10:50 PM
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
        <title>Proximity Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/ProximitySensor.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Proximity Sensor">
                            <input type="hidden" name="linkName" value="ProximitySensor">
                            <input type="hidden" name="price" value="${productDetails['Proximity Sensor']}">
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
                            <input type="hidden" name="productName" value="Proximity Sensor">
                            <input type="hidden" name="linkName" value="ProximitySensor">
                            <input type="hidden" name="price" value="${productDetails['Proximity Sensor']}">
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
                <h2>Proximity Sensor</h2>
                <h4>₹ ${productDetails['Proximity Sensor']}</h4>
                The Infrared proximity sensor GP2Y0A02YK0F has an analog output varying from 2.8V to 0.4V at 150cm with a supply voltage between 4.5 and 5.5V DC. 
                The sensor has a Japanese Solderless Terminal (JST) Connector.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Supply </td>
                            <td> 4.5 to 5.5V </td>
                        </tr>
                        <tr>
                            <td> Range </td>
                            <td> 20 to 150cm </td>
                        </tr>
                        <tr>
                            <td> Output </td>
                            <td> Analog </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>