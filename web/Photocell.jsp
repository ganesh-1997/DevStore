<%-- 
    Document   : Photocell
    Created on : 10 May, 2017, 7:06:08 PM
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
        <title>Photocell - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/Photocell.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Photocell">
                            <input type="hidden" name="linkName" value="Photocell">
                            <input type="hidden" name="price" value="${productDetails['Photocell']}">
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
                            <input type="hidden" name="productName" value="Photocell">
                            <input type="hidden" name="linkName" value="Photocell">
                            <input type="hidden" name="price" value="${productDetails['Photocell']}">
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
                <h2>Photocell</h2>
                <h4>₹ ${productDetails['Photocell']}</h4>
                A photocell changes its resistance depending on the amount of light it is exposed to.
                These little sensors make great ambient light triggers.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Maximum Voltage </td>
                            <td> 150V </td>
                        </tr>
                        <tr>
                            <td> Maximum Power </td>
                            <td> 100mW </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>