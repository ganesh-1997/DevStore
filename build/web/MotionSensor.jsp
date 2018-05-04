<%-- 
    Document   : MotionSensor
    Created on : 6 Apr, 2017, 11:40:06 PM
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
        <title>Motion Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Motion Sensor</h2>
                    <h4>₹ ${productDetails['Motion Sensor']}</h4>
                </div>
                <img src="Products/MotionSensor.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Motion Sensor">
                            <input type="hidden" name="linkName" value="MotionSensor">
                            <input type="hidden" name="price" value="${productDetails['Motion Sensor']}">
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
                            <input type="hidden" name="productName" value="Motion Sensor">
                            <input type="hidden" name="linkName" value="MotionSensor">
                            <input type="hidden" name="price" value="${productDetails['Motion Sensor']}">
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
                    <h2>Motion Sensor</h2>
                    <h4>₹ ${productDetails['Motion Sensor']}</h4>
                </div>
                This is an easy to use motion sensor.
                Power it up and wait 1-2 seconds for the sensor to get a ds of the still room.
                If anything moves after that period, the alarm pin will go low.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 12V </td>
                        </tr>
                        <tr>
                            <td> Range </td>
                            <td> 6m </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>