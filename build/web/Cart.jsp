<%-- 
    Document   : Cart
    Created on : 22 Apr, 2017, 10:52:12 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Cart.css">
    </head>
    <body>
        <div class="row firstRow">
            <div class="col-md-6 mx-auto">
                <div class="card card-body">Cart</div>
                <c:choose>
                    <c:when test="${sessionScope.itemCount == 0}">
                        <div class="alert alert-danger">
                            <a href="Shop.jsp">No Items in Cart. Start Shopping !</a>
                        </div>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.addToCart == true}">
                        <div class="alert alert-success">
                            Added to Cart
                        </div>
                        <c:remove var="addToCart"/>
                    </c:when>
                    <c:when test="${sessionScope.addToCart == false}">
                        <div class="alert alert-danger">
                            Failed to Add. Try Later.
                        </div>
                        <c:remove var="addToCart"/>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.removeFromCart == true}">
                        <div class="alert alert-success">
                            Removed from Cart
                        </div>
                        <c:remove var="removeFromCart"/>
                    </c:when>
                    <c:when test="${sessionScope.removeFromCart == false}">
                        <div class="alert alert-danger">
                            Failed to Remove. Try Later.
                        </div>
                        <c:remove var="removeFromCart"/>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.moveToList == true}">
                        <div class="alert alert-success">
                            Moved to Wishlist
                        </div>
                        <c:remove var="moveToList"/>
                    </c:when>
                    <c:when test="${sessionScope.moveToList == false}">
                        <div class="alert alert-danger">
                            Failed to Move. Try Later.
                        </div>
                        <c:remove var="moveToList"/>
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
                                    <form action="CartRemove" method="post">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <button class="btn btn-link" type="submit"><i class="fas fa-minus-circle"></i></button>
                                    </form>
                                    <form action="MovetoWishlist" method="post">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <input type="hidden" name="linkName" value="${product.linkName}">
                                        <input type="hidden" name="price" value="${product.price}">
                                        <button class="btn btn-link" type="submit"> <i class="far fa-bookmark"></i></button>
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
                        <c:choose>
                            <c:when test="${sessionScope.itemCount > 0}">
                            <li class="list-group-item"><a href="Checkout.jsp" class="btn btn-primary order">Place Order</a></li>
                            </c:when>
                        </c:choose>
                </ul>
            </div>
        </div>
    </body>
</html>