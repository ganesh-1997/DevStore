<%-- 
    Document   : Orders
    Created on : 9 Jun, 2017, 1:33:49 PM
    Author     : Ganesh
--%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="Orders.css">
        <title>Orders - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-8">
                <div class="panel panel-default">
                    <div class="panel-body">
                        My Orders
                    </div>
                </div>
                <c:forEach items="${orders}" var="order">
                    <table class="table">
                        <thead>
                            <tr>
                                <td>${order.id}</td>
                                <td></td>
                                <td class="pull-right">Ordered ${order.orderDate}</td>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${order.products}" var="product">
                                <tr>
                                    <td class="image"><img class = "image" src="Products/${product.linkName}.jpg"></td>
                                    <td><a href="${product.linkName}.jsp">${product.productName}</a></td>
                                    <td><div class="pull-right"><font color="red">₹ ${product.price}</font></div>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:forEach>
            </div>
            <div class="col-md-4">
            </div>
        </div>
    </body>
</html>