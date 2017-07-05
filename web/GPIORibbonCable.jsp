<%-- 
    Document   : GPIORibbonCable
    Created on : 8 Apr, 2017, 10:27:13 PM
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
        <title>GPIO Ribbon Cable - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/GPIORibbonCable.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="GPIO Ribbon Cable">
                            <input type="hidden" name="linkName" value="GPIORibbonCable">
                            <input type="hidden" name="price" value="${productDetails['GPIO Ribbon Cable']}">
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
                            <input type="hidden" name="productName" value="GPIO Ribbon Cable">
                            <input type="hidden" name="linkName" value="GPIORibbonCable">
                            <input type="hidden" name="price" value="${productDetails['GPIO Ribbon Cable']}">
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
                <h2><b> GPIO Ribbon Cable </b></h2>
                <h4><font color="red">₹ ${productDetails['GPIO Ribbon Cable']}</font></h4>
                This 2x13 flat ribbon-cable fits the GPIO headers on the Raspberry Pi so you can easily connect to the low-level peripherals and start hacking! 
                This cable has 0.1" spaced connectors and is keyed for polarity.
            </div>
        </div>
    </body>
</html>