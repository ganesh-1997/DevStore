<%-- 
    Document   : pHSensor
    Created on : 10 May, 2017, 7:02:01 PM
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
        <title>pH Sensor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/pHSensor.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="pH Sensor">
                            <input type="hidden" name="linkName" value="pHSensor">
                            <input type="hidden" name="price" value="${productDetails['pH Sensor']}">
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
                            <input type="hidden" name="productName" value="pH Sensor">
                            <input type="hidden" name="linkName" value="pHSensor">
                            <input type="hidden" name="price" value="${productDetails['pH Sensor']}">
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
                <h2>pH Sensor</h2>
                <h4>₹ ${productDetails['pH Sensor']}</h4>
                Need to measure precise pH?
                This kit includes everything you need including buffer solutions for calibration, pH probe, and even a board to connect directly to your favorite microcontroller. 
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Connector </td>
                            <td> BNC </td>
                        </tr>
                        <tr>
                            <td> Speed of Response </td>
                            <td> 95% in 1sec </td>
                        </tr>
                        <tr>
                            <td> Baud Rate </td>
                            <td> 38400 </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>