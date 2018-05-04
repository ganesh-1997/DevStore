<%-- 
    Document   : Orders
    Created on : 9 Jun, 2017, 1:33:49 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="Orders.css">
        <title>Orders - Dev Store</title>
    </head>
    <body>
        <div class="row firstRow" id="orders">
            <div class="col-md-12">
                <div class="card card-body">My Orders</div>
                <c:choose>
                    <c:when test="${sessionScope.orderPlaced == true}">
                        <div class="alert alert-success">
                            Order Placed Successfully.
                        </div>
                        <c:remove var="orderPlaced"/>
                    </c:when>
                    <c:when test="${sessionScope.orderPlaced == false}">
                        <div class="alert alert-danger">
                            Failed to Place Order. Try later. 
                        </div>
                        <c:remove var="orderPlaced"/>
                    </c:when>
                </c:choose>
                <c:forEach items="${orders}" var="order">
                    <div class="card card-body" id="orderDetails">
                        <span>Order <small class="text-muted"> # ${order.id} </small></span>
                        <span>Placed on <small class="text-muted"> ${order.orderDate} </small></span>
                    </div>
                    <c:forEach items="${order.products}" var="product">
                        <div class="row" id="firstRow">
                            <div class="col-3"><img class="image" src="Products/${product.linkName}.jpg"></div>
                            <div class="col-6 productName"><a href="${product.linkName}.jsp">${product.productName}</a></div>
                            <div class="col-3 price">₹ ${product.price}</div>
                        </div>
                    </c:forEach>
                </c:forEach>
            </div>
        </div>
    </body>
</html>