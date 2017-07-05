<%-- 
    Document   : CAT6Cable
    Created on : 8 Apr, 2017, 11:07:02 PM
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
        <title>CAT 6 Cable - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/CAT6Cable.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="CAT 6 Cable">
                            <input type="hidden" name="linkName" value="CAT6Cable">
                            <input type="hidden" name="price" value="${productDetails['CAT 6 Cable']}">
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
                            <input type="hidden" name="productName" value="CAT 6 Cable">
                            <input type="hidden" name="linkName" value="CAT6Cable">
                            <input type="hidden" name="price" value="${productDetails['CAT 6 Cable']}">
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
                <h2>CAT 6 Cable</h2>
                <h4>₹ ${productDetails['CAT 6 Cable']}</h4>
                This 3ft Category 6 (CAT 6) Ethernet cable is the solution to your internet working needs.
                With a speed of up to 500MHz you can connect to your LAN/WAN segments and networking gear at maximum speed.
                Also, with its superior connector you get a cable that is built for speed and endurance.
            </div>
        </div>
    </body>
</html>