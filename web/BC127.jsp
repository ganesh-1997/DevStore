<%-- 
    Document   : BC127
    Created on : 4 May, 2017, 3:43:39 PM
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
        <title>BC127 - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/BC127.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="BC127">
                            <input type="hidden" name="linkName" value="BC127">
                            <input type="hidden" name="price" value="${productDetails['BC127']}">
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
                            <input type="hidden" name="productName" value="BC127">
                            <input type="hidden" name="linkName" value="BC127">
                            <input type="hidden" name="price" value="${productDetails['BC127']}">
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
                <h2>BC127 Bluetooth Module</h2>
                <h4>₹ ${productDetails['BC127']}</h4>
                This is the BC127, a highly flexible, low power, small form factor Bluetooth Version 4.0 Certified Audio module. 
                Each module comes preloaded with BlueCreation Melody software, and is ideal for developers who want to quickly and cost effectively integrate Bluetooth functionality into a project.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Data Rate </td>
                            <td> 3 Mbps </td>
                        </tr>
                        <tr>
                            <td> Supply Power </td>
                            <td> 3.3V to 4.7 V DC @ 15mA </td>
                        </tr>
                        <tr>
                            <td> Interface </td>
                            <td> UART, GPIO </td>
                        </tr>
                        <tr>
                            <td> Modes </td>
                            <td> Bluetooth and BLE </td>
                        </tr>
                        <tr>
                            <td> Range </td>
                            <td> 20 to 30m </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>