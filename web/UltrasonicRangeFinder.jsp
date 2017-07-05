<%-- 
    Document   : UltrasonicRangeFinder
    Created on : 10 May, 2017, 7:16:08 PM
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
        <title>Ultrasonic Range Finder - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/UltrasonicRangeFinder.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Ultrasonic Range Finder">
                            <input type="hidden" name="linkName" value="UltrasonicRangeFinder">
                            <input type="hidden" name="price" value="${productDetails['Ultrasonic Range Finder']}">
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
                            <input type="hidden" name="productName" value="Ultrasonic Range Finder">
                            <input type="hidden" name="linkName" value="UltrasonicRangeFinder">
                            <input type="hidden" name="price" value="${productDetails['Ultrasonic Range Finder']}">
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
                <h2>Ultrasonic Range Finder </b></h2>
                <h4>₹ ${productDetails['Ultrasonic Range Finder']}</h4>
                This is the easy to use ultrasonic range finder from Maxbotix. 
                The serial interface is RS-232 instead of TTL, but the PWM and analog interfaces will allow any micro to listen easily enough.
                The sensor provides very accurate readings of 0 to 255 inches (0 to 6.45m) in 1 inch increments with little or no dead zone!
                Maxbotix is offering the EZ0, EZ1, EZ2, EZ3, and EZ4 with progressively narrower beam angles allowing the sensor to match the application. 
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Frequency </td>
                            <td> 42kHz </td>
                        </tr>
                        <tr>
                            <td> Supply </td>
                            <td> 2.5 to 5.5V </td>
                        </tr>
                        <tr>
                            <td> Reading Rate </td>
                            <td> 20 Hz </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>