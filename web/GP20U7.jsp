<%-- 
    Document   : GP20U7
    Created on : 4 May, 2017, 3:35:01 PM
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
        <title>GP20U7 - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/GP20U7.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="GP20U7">
                            <input type="hidden" name="linkName" value="GP20U7">
                            <input type="hidden" name="price" value="${productDetails['GP20U7']}">
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
                            <input type="hidden" name="productName" value="GP20U7">
                            <input type="hidden" name="linkName" value="GP20U7">
                            <input type="hidden" name="price" value="${productDetails['GP20U7']}">
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
                <h2>GP20U7 Receiver</h2>
                <h4>₹ ${productDetails['GP20U7']}</h4>
                The GP20U7 is a compact GPS receiver with a built-in high performances all-in-one GPS chipset.
                The GP20U7 accurately provides position, velocity, and time readings as well possessing high sensitivity and tracking capabilities.
                The GP20U7 is ideal for portable applications such as tablet PCs, smart phones, and other devices requiring positioning capability.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Sensitivity </td>
                            <td> -162dBm </td>
                        </tr>
                        <tr>
                            <td> Accuracy </td>
                            <td> 2.5m </td>
                        </tr>
                        <tr>
                            <td> Power </td>
                            <td> 40mA @ 3.3V </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>