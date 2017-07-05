<%-- 
    Document   : GP735
    Created on : 8 Apr, 2017, 9:55:11 PM
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
        <title>GP735 - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/GP735.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="GP735">
                            <input type="hidden" name="linkName" value="GP735">
                            <input type="hidden" name="price" value="${productDetails['GP735']}">
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
                            <input type="hidden" name="productName" value="GP735">
                            <input type="hidden" name="linkName" value="GP735">
                            <input type="hidden" name="price" value="${productDetails['GP735']}">
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
                <h2>GP735</h2>
                <h4>₹ ${productDetails['GP735']}</h4>
                The GP735 is a slim, ultra-high performance, easy to use GPS smart antenna receiver.
                With -162dBm tracking sensitivity and only 29 second cold start time, the GP735 is a very powerful piece of tech.
                The slim design makes it ideal for applications where you don’t have a lot of space to work with.
                The 1Hz update rate is fast enough for a majority of applications. 
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Interface </td>
                            <td> UART </td>
                        </tr>
                        <tr>
                            <td> Frequency </td>
                            <td> 1.575 GHz </td>
                        </tr>
                        <tr>
                            <td> Antenna </td>
                            <td> On-Board, Patch </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>