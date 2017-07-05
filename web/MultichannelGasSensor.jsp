<%-- 
    Document   : MultichannelGasSensor
    Created on : 6 Apr, 2017, 11:44:25 PM
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
        <title>Multichannel Gas Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/MultichannelGasSensor.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Multichannel Gas Sensor">
                            <input type="hidden" name="linkName" value="MultichannelGasSensor">
                            <input type="hidden" name="price" value="${productDetails['Multichannel Gas Sensor']}">
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
                            <input type="hidden" name="productName" value="Multichannel Gas Sensor">
                            <input type="hidden" name="linkName" value="MultichannelGasSensor">
                            <input type="hidden" name="price" value="${productDetails['Multichannel Gas Sensor']}">
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
                <h2>Multichannel Gas Sensor</h2>
                <h4>₹ ${productDetails['Multichannel Gas Sensor']}</h4>
                Multichannel Gas Sensor has a built in MiCS-6814 which can detect many unhealthy gases,
                and three gases can be measured simultaneously due to its three channels, so it can help you to monitor the concentration of more than one gas.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 3.1 - 5.25V </td>
                        </tr>
                        <tr>
                            <td> Heating Power </td>
                            <td> 88mW </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>