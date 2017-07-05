<%-- 
    Document   : Cart
    Created on : 22 Apr, 2017, 10:52:12 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Cart.css">
    </head>
    <body>
        <div class="row">
            <div class="col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-body">
                        My Shopping Bag
                    </div>
                </div>
                <table class="table">
                    <tbody>
                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td class="image"><img class = "image" src="Products/${product.linkName}.jpg"></td>
                                <td><a href="${product.linkName}.jsp">${product.productName}</a>
                                    <form action="CartRemove">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <input type="submit" class="pull-left remove" value="REMOVE">
                                    </form>
                                    <form action="MovetoWishlist">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <input type="hidden" name="linkName" value="${product.linkName}">
                                        <input type="hidden" name="price" value="${product.price}">
                                        <input type="submit" class="pull-right remove" value="MOVE TO MY LIST">
                                    </form>
                                </td>
                                <td class="hidden-xs">Delivery in 4 Days</td>
                                <td><div class="pull-right"><font color="red">₹ ${product.price}</font></div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <a href="Wishlist">Add More From Wishlist</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <ul class="list-group">
                    <li class="list-group-item list-head" align="center">Cart Details </li>
                    <li class="list-group-item">Bag Total <div class="pull-right"><font color="red">₹ ${sessionScope.bagTotal}</font></div></li>
                    <li class="list-group-item">Bag Items <div class="pull-right"> ${sessionScope.itemCount}</div></li>
                    <li class="list-group-item">Delivery  <div class="pull-right">${sessionScope.deliveryCharge}</div></li>
                    <li class="list-group-item">Cart Total <div class="pull-right"><font color="red">₹ ${sessionScope.cartTotal}</font></div></li>
                    <li class="list-group-item"><a href="Checkout.jsp" class="btn btn-primary order">Place Order</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>