<%-- 
    Document   : XBee
    Created on : 6 Apr, 2017, 6:49:08 PM
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
        <title>XBee - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>XBee</h2>
                    <h4>₹ ${productDetails['XBee']}</h4>
                </div>
                <img src="Products/XBee.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="XBee">
                            <input type="hidden" name="linkName" value="XBee">
                            <input type="hidden" name="price" value="${productDetails['XBee']}">
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
                            <input type="hidden" name="productName" value="XBee">
                            <input type="hidden" name="linkName" value="XBee">
                            <input type="hidden" name="price" value="${productDetails['XBee']}">
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
                    <h2>XBee</h2>
                    <h4>₹ ${productDetails['XBee']}</h4>
                </div>
                This is the Pro version of the popular XBee! 
                This module is a 802.15.4 60mW wireless module, good for point-to-point, multipoint and convertible to a mesh network point. 
                These are much more powerful than the plain XBee modules, great for when you need more range.
                If you have two in range, they will automatically form a serial link with no configuration, so you can send TTL serial data back and forth. 
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Data Rate </td>
                            <td> 250kbps </td>
                        </tr>
                        <tr>
                            <td> Input Power </td>
                            <td> 3.3V @ 215mA </td>
                        </tr>
                        <tr>
                            <td> Output Power </td>
                            <td> 60mW </td>
                        </tr>
                        <tr>
                            <td> Digital I/O Pins </td>
                            <td> 8 </td>
                        </tr>
                        <tr>
                            <td> Analog Input Pins </td>
                            <td> 6 </td>
                        </tr>
                        <tr>
                            <td> Antenna </td>
                            <td> Built-In </td>
                        </tr>
                        <tr>
                            <td> Range </td>
                            <td> 1500m </td>
                        </tr>
                        <tr>
                            <td> Encryption </td>
                            <td> 128 Bit </td>
                        </tr>
                        <tr>
                            <td> Command </td>
                            <td> AT / API </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>