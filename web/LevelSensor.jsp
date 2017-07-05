<%-- 
    Document   : LevelSensor
    Created on : 10 May, 2017, 6:47:55 PM
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
        <title>Level Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/LevelSensor.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Level Sensor">
                            <input type="hidden" name="linkName" value="LevelSensor">
                            <input type="hidden" name="price" value="${productDetails['Level Sensor']}">
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
                            <input type="hidden" name="productName" value="Level Sensor">
                            <input type="hidden" name="linkName" value="LevelSensor">
                            <input type="hidden" name="price" value="${productDetails['Level Sensor']}">
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
                <h2>Level Sensor</h2>
                <h4>₹ ${productDetails['Level Sensor']}</h4>
                The SST Liquid Level Sensor provides single point liquid detection via a TTL compatible push/pull output.
                An infra-red LED and phototransistor accurately positioned at the base of the sensing tip ensure good optical coupling between the two when the sensor is in air. 
                When the sensing tip is immersed in liquid, the infra-red light escapes from the cone, causing a change in the amount of light present at the phototransistor, which makes the output change state.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Voltage </td>
                            <td> 4.5 to 15.4V DC </td>
                        </tr>
                        <tr>
                            <td> Temperature </td>
                            <td> -25 to +80°C </td>
                        </tr>
                        <tr>
                            <td> Connector </td>
                            <td> M12 </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>