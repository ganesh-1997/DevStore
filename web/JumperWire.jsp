<%-- 
    Document   : JumperWire
    Created on : 8 Apr, 2017, 10:54:54 PM
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
        <title>Jumper Wire - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/JumperWire.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Jumper Wire">
                            <input type="hidden" name="linkName" value="JumperWire">
                            <input type="hidden" name="price" value="${productDetails['Jumper Wire']}">
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
                            <input type="hidden" name="productName" value="Jumper Wire">
                            <input type="hidden" name="linkName" value="JumperWire">
                            <input type="hidden" name="price" value="${productDetails['Jumper Wire']}">
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
                <h2>Jumper Wire</h2>
                <h4>₹ ${productDetails['Jumper Wire']}</h4>
                This is a simple jumper adapter cable that comes pre-terminated with a female JST connector on one end and a breadboard hookup pigtail on the other. 
                This cable makes it easy to connect components with a JST connector to a breadboard or an Arduino-based device pins.
                Wire length is 140mm (about 5.5") long.
                
            </div>
        </div>
    </body>
</html>