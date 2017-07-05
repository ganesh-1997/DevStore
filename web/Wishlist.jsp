<%-- 
    Document   : Wishlist
    Created on : 26 Apr, 2017, 4:51:53 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Wishlist - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Cart.css">
    </head>
    <body>
        <div class="row">
            <div class="col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-body">
                        My Wishlist
                    </div>
                </div>
                <table class="table">
                    <tbody>                        
                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td class="image"><img class = "image" src="Products/${product.linkName}.jpg"></td>
                                <td><a href="${product.linkName}.jsp">${product.productName}</a>
                                    <form action="WishlistRemove">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <input type="submit" class="pull-left remove" value="REMOVE">
                                    </form>
                                    <form action="MovetoCart">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <input type="hidden" name="linkName" value="${product.linkName}">
                                        <input type="hidden" name="price" value="${product.price}">
                                        <input type="submit" class="pull-right remove" value="MOVE TO CART">
                                    </form>
                                </td>
                                <td class="hidden-xs">Delivery in 4 Days</td>
                                <td><div class="pull-right"><font color="red">₹ ${product.price}</font></div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-sm-4">
            </div>
        </div>
    </body>
</html>