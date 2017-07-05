<%-- 
    Document   : Relay
    Created on : 10 May, 2017, 7:50:20 PM
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
        <title>Relay - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/Relay.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Relay">
                            <input type="hidden" name="linkName" value="Relay">
                            <input type="hidden" name="price" value="${productDetails['Relay']}">
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
                            <input type="hidden" name="productName" value="Relay">
                            <input type="hidden" name="linkName" value="Relay">
                            <input type="hidden" name="price" value="${productDetails['Relay']}">
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
                <h2>Relay</h2>
                <h4>₹ ${productDetails['Relay']}</h4>
                A solid state relay allows you to control high-current AC loads from lower voltage DC control circuitry. 
                Solid state relays have several advantages over mechanical relays. 
                The big advantage is that they can be switched by a much lower voltage and at a much lower current than other relays.
                Because there are no moving contacts, solid state relays can be switched much faster and for much longer periods without wearing out.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Trigger Current </td>
                            <td> 7.5mA </td>
                        </tr>
                        <tr>
                            <td> Control Voltage </td>
                            <td> 24 - 380V AC </td>
                        </tr>
                        <tr>
                            <td> Input Voltage </td>
                            <td> 3 - 32V DC </td>
                        </tr>
                        <tr>
                            <td> Type </td>
                            <td> Zero Cross </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>