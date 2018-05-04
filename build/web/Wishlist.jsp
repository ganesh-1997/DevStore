<%-- 
    Document   : Wishlist
    Created on : 26 Apr, 2017, 4:51:53 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wishlist - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Cart.css">
    </head>
    <body>
        <div class="row firstRow">
            <div class="col-md-6">
                <div class="card card-body">Wishlist</div>
                <c:choose>
                    <c:when test="${sessionScope.addToList == true}">
                        <div class="alert alert-success">
                            Added to List
                        </div>
                        <c:remove var="addToList"/>
                    </c:when>
                    <c:when test="${sessionScope.addToList == false}">
                        <div class="alert alert-danger">
                            Failed to Add. Try Later.
                        </div>
                        <c:remove var="addToList"/>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.removeFromList == true}">
                        <div class="alert alert-success">
                            Removed from List
                        </div>
                        <c:remove var="removeFromList"/>
                    </c:when>
                    <c:when test="${sessionScope.removeFromList == false}">
                        <div class="alert alert-danger">
                            Failed to Remove. Try Later.
                        </div>
                        <c:remove var="removeFromList"/>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.moveToCart == true}">
                        <div class="alert alert-success">
                            Moved to Cart
                        </div>
                        <c:remove var="moveToCart"/>
                    </c:when>
                    <c:when test="${sessionScope.moveToCart == false}">
                        <div class="alert alert-danger">
                            Failed to Move. Try Later.
                        </div>
                        <c:remove var="moveToCart"/>
                    </c:when>
                </c:choose>
                <c:forEach items="${products}" var="product">
                    <div class="row" id="firstRow">
                        <div class="col-3">
                            <img class="image" src="Products/${product.linkName}.jpg">
                        </div>
                        <div class="col-6">
                            <div class="row col-12 productName">
                                <a href="${product.linkName}.jsp">${product.productName}</a>
                            </div>
                            <div class="row col-12 stock">
                                In Stock
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <form action="WishlistRemove" method="post">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <button class="btn btn-link" type="submit"> <i class="fas fa-minus-circle"></i></button>
                                    </form>
                                        <form action="MovetoCart" method="post">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <input type="hidden" name="linkName" value="${product.linkName}">
                                        <input type="hidden" name="price" value="${product.price}">
                                        <button class="btn btn-link"type="submit"> <i class="fas fa-shopping-cart"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-3 price">₹ ${product.price}</div>
                    </div>
                </c:forEach>
            </div>
            <div class="col-md-6">
                <ul class="list-group mx-auto">
                    <li class="list-group-item list-head">Cart Details </li>
                    <li class="list-group-item">Bag Total <span class="float-right price">₹ ${sessionScope.bagTotal}</span></li>
                    <li class="list-group-item">Bag Items <span class="float-right"> ${sessionScope.itemCount}</span></li>
                    <li class="list-group-item">Delivery  <span class="float-right">${sessionScope.deliveryCharge}</span></li>
                    <li class="list-group-item">Cart Total <span class="float-right price">₹ ${sessionScope.cartTotal}</span></li>
                    <li class="list-group-item"><a href="Cart.jsp" class="btn btn-primary order">Go to Cart</a></li>
                </ul>
            </div>
        </div>
    </body>
</html>