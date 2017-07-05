<%-- 
    Document   : LIDAR
    Created on : 10 May, 2017, 6:53:09 PM
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
        <title>LIDAR - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/LIDAR.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="LIDAR">
                            <input type="hidden" name="linkName" value="LIDAR">
                            <input type="hidden" name="price" value="${productDetails['LIDAR']}">
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
                            <input type="hidden" name="productName" value="LIDAR">
                            <input type="hidden" name="linkName" value="LIDAR">
                            <input type="hidden" name="price" value="${productDetails['LIDAR']}">
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
                <h2>LIDAR</h2>
                <h4>₹ ${productDetails['LIDAR']}</h4>
                This is the LIDAR-Lite v3, a compact, high-performance optical distance measurement sensor from Garmin™.
                The LIDAR-Lite v3 is the ideal solution for drone, robot or unmanned vehicle applications.
                This easy-to-use 40-meter laser-based optical ranging sensor has all the core features that made the LIDAR-Lite v2 so popular. 
                It is small in form and light in weight with low power consumption of less than 130mA during an acquisition. 
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Range </td>
                            <td> 0 to 40m </td>
                        </tr>
                        <tr>
                            <td> Interface </td>
                            <td> PWM, IIC </td>
                        </tr>
                        <tr>
                            <td> Optical Aperture </td>
                            <td> 12.5mm </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>