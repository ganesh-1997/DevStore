<%-- 
    Document   : Checkout
    Created on : 6 Jun, 2017, 2:30:44 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Cart.css">
        <script type="text/javascript" src="Validate.js"></script>
        <link rel="stylesheet" type="text/css" href="Profile.css">
    </head>
    <body>
        <div class="row">
            <div class="col-sm-4">
                <div class="panel panel-default address">
                    <div class="panel-body">
                        <div class="name"><span><i class="fa fa-check-circle-o" aria-hidden="true"></i> ${sessionScope.name}</span></div>
                        <div class="addressLine"><span>${sessionScope.addressLine1}, ${sessionScope.addressLine2}</span></div>
                        <div class="city"><span>${sessionScope.city} - ${sessionScope.pinCode}</span></div>
                        <div class="state"><span>${sessionScope.state}</span></div>
                        <div class="number"><span>Mobile: ${sessionScope.number}</span></div>
                        <div class="edit-btn"><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Address">Edit</button></div>
                        <div class="modal fade" id="Address" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content animate">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title" align="center">Address</h4>
                                    </div>
                                    <div class="modal-body">
                                        <form name = "Address" action = "Address" method = "post">
                                            <div class="form-group">
                                                <input type="text" class="textColor" name="addressLine1" placeholder="${sessionScope.addressLine1}"
                                                       onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.addressLine1}'">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="textColor" name="addressLine2" placeholder="${sessionScope.addressLine2}"
                                                       onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.addressLine2}'">
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control" name="state" id="state" onchange="setCity(this)">
                                                    <option disabled="" selected="" hidden="">${sessionScope.state}</option>
                                                    <option>Kerala</option>
                                                    <option>Tamil Nadu</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <select class="form-control" name="city" id="city" disabled="disabled">
                                                    <option>${sessionScope.city}</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="textColor" name="pinCode" placeholder="${sessionScope.pinCode}"
                                                       onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.pinCode}'"> 
                                            </div>
                                            <input type = "submit" value="Update">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
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
                                </td>
                                <td class="hidden-xs">Delivery in 7 Days</td>
                                <td><div class="pull-right"><font color="red">₹ ${product.price}</font></div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <form action="Order">
                    <input type="submit" value="Checkout">
                </form>
            </div>
        </div>
    </body>
</html>
