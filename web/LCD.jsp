<%-- 
    Document   : LCD
    Created on : 8 Apr, 2017, 9:02:46 PM
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
        <title>LCD - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/LCD.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="LCD">
                            <input type="hidden" name="linkName" value="LCD">
                            <input type="hidden" name="price" value="${productDetails['LCD']}">
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
                            <input type="hidden" name="productName" value="LCD">
                            <input type="hidden" name="linkName" value="LCD">
                            <input type="hidden" name="price" value="${productDetails['LCD']}">
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
                <h2>LCD</h2>
                <h4>₹ ${productDetails['LCD']}</h4>
                This is a basic 16 character by 2 line display with a black text on Green background.
                It utilizes the extremely common HD44780 parallel interface.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 2.7 - 5.5V </td>
                        </tr>
                        <tr>
                            <td> Back Light </td>
                            <td> Green </td>
                        </tr>
                        <tr>
                            <td> Text Color </td>
                            <td> Black </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>