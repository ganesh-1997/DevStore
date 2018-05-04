<%-- 
    Document   : SoilMoistureSensor
    Created on : 6 Apr, 2017, 11:56:29 PM
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
        <title>Soil Moisture Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Soil Moisture Sensor</h2>
                    <h4>₹ ${productDetails['Soil Moisture Sensor']}</h4>
                </div>
                <img src="Products/SoilMoistureSensor.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Soil Moisture Sensor">
                            <input type="hidden" name="linkName" value="SoilMoistureSensor">
                            <input type="hidden" name="price" value="${productDetails['Soil Moisture Sensor']}">
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
                            <input type="hidden" name="productName" value="Soil Moisture Sensor">
                            <input type="hidden" name="linkName" value="SoilMoistureSensor">
                            <input type="hidden" name="price" value="${productDetails['Soil Moisture Sensor']}">
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
                    <h2>Soil Moisture Sensor</h2>
                    <h4>₹ ${productDetails['Soil Moisture Sensor']}</h4>
                </div>
                The soil moisture sensor is pretty straight forward to use.
                The two large exposed pads function as probes for the sensor, together acting as a variable resistor.
                The more water that is in the soil means a better conductivity between the pads and will result in a lower resistance, and a higher SIG out.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 3.3 - 5V </td>
                        </tr>
                        <tr>
                            <td> Sensor Output </td>
                            <td> 300 to 750 for Moist Soil </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>