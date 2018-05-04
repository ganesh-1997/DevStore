<%-- 
    Document   : UltrasonicSensor
    Created on : 6 Apr, 2017, 10:51:27 PM
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
        <title>Ultrasonic Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Ultrasonic Sensor</h2>
                    <h4>₹ ${productDetails['Ultrasonic Sensor']}</h4>
                </div>
                <img src="Products/UltrasonicSensor.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Ultrasonic Sensor">
                            <input type="hidden" name="linkName" value="UltrasonicSensor">
                            <input type="hidden" name="price" value="${productDetails['Ultrasonic Sensor']}">
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
                            <input type="hidden" name="productName" value="Ultrasonic Sensor">
                            <input type="hidden" name="linkName" value="UltrasonicSensor">
                            <input type="hidden" name="price" value="${productDetails['Ultrasonic Sensor']}">
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
                    <h2>Ultrasonic Sensor</h2>
                    <h4>₹ ${productDetails['Ultrasonic Sensor']}</h4>
                </div>
                The ultrasonic sensor HC-SR04 provides 2cm to 400cm of non-contact measurement functionality with a ranging accuracy that can reach up to 3mm.
                Each HC-SR04 module includes an ultrasonic transmitter, a receiver and a control circuit.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 5V </td>
                        </tr>
                        <tr>
                            <td> Operating Current </td>
                            <td> 15mA </td>
                        </tr>
                        <tr>
                            <td> Measure Angle </td>
                            <td> 15° </td>
                        </tr>
                        <tr>
                            <td> Range </td>
                            <td> 2cm to 4m </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>