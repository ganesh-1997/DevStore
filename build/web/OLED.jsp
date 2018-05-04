<%-- 
    Document   : OLED
    Created on : 8 Apr, 2017, 9:14:51 PM
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
        <title>OLED - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>OLED</h2>
                    <h4>₹ ${productDetails['OLED']}</h4>
                </div>
                <img src="Products/OLED.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="OLED">
                            <input type="hidden" name="linkName" value="OLED">
                            <input type="hidden" name="price" value="${productDetails['OLED']}">
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
                            <input type="hidden" name="productName" value="OLED">
                            <input type="hidden" name="linkName" value="OLED">
                            <input type="hidden" name="price" value="${productDetails['OLED']}">
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
                    <h2>OLED</h2>
                    <h4>₹ ${productDetails['OLED']}</h4>
                </div>                
                OLED 1.12" is a 16 color grayscale 96×96 dot matrix OLED display module with a 4 pin I2C interface.
                It is constructed with 96 x 96 dot matrix OLED module and SSD1327 driver IC. 
                The characteristics of this module are high brightness, high contrast ratio, thin outline, wide viewing angle and low power consumption.                
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 3.3 - 5V </td>
                        </tr>
                        <tr>
                            <td> Back Light </td>
                            <td> Grayscale </td>
                        </tr>
                        <tr>
                            <td> Text Color </td>
                            <td> White </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>