<%-- 
    Document   : Breadboard
    Created on : 4 May, 2017, 4:17:15 PM
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
        <title>Breadboard - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/Breadboard.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Breadboard">
                            <input type="hidden" name="linkName" value="Breadboard">
                            <input type="hidden" name="price" value="${productDetails['Breadboard']}">
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
                            <input type="hidden" name="productName" value="Breadboard">
                            <input type="hidden" name="linkName" value="Breadboard">
                            <input type="hidden" name="price" value="${productDetails['Breadboard']}">
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
                <h2>Breadboard</h2>
                <h4>₹ ${productDetails['Breadboard']}</h4>
                 This breadboard has 2 split power buses, 10 columns, and 63 rows, a total of 830 tie-in points. 
                 All pins are spaced by a standard 0.1". The two sets of five columns are separated by about 0.3".
                 The board accepts wire sizes in the range of 20-29AWG.
            </div>
        </div>
    </body>
</html>