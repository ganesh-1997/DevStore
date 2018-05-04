<%-- 
    Document   : ForceSensor
    Created on : 10 May, 2017, 5:38:59 PM
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
        <title>Force Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Force Sensor</h2>
                    <h4>₹ ${productDetails['Force Sensor']}</h4>
                </div>
                <img src="Products/ForceSensor.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Force Sensor">
                            <input type="hidden" name="linkName" value="ForceSensor">
                            <input type="hidden" name="price" value="${productDetails['Force Sensor']}">
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
                            <input type="hidden" name="productName" value="Force Sensor">
                            <input type="hidden" name="linkName" value="ForceSensor">
                            <input type="hidden" name="price" value="${productDetails['Force Sensor']}">
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
                    <h2>Force Sensor</h2>
                    <h4>₹ ${productDetails['Force Sensor']}</h4>
                </div>                
                This is a small force sensitive resistor.
                It has a 4mm diameter active sensing area.
                The harder the force, the lower the resistance.
                Two pins extend from the bottom of the sensor with 0.1" pitch making it bread board friendly.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Sensing Area </td>
                            <td> 0.3" </td>
                        </tr>
                        <tr>
                            <td> Range </td>
                            <td> 0.1 to 10N </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>