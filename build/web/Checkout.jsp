<%-- 
    Document   : Checkout
    Created on : 6 Jun, 2017, 2:30:44 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Cart.css">
        <script>
            $(document).ready(function () {
                $('html, body').animate({
                    scrollTop: $('#checkOut').offset().top
                }, 'slow');
            });
        </script>
    </head>
    <body>
        <div class="row firstRow">
            <div class="col-md-6">
                <div class="card card-body">Checkout</div>
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
                                    <form action="CartRemove">
                                        <input type="hidden" name="productName" value="${product.productName}">
                                        <button class="btn btn-link" type="submit"><i class="fas fa-minus-circle"></i></button>
                                    </form>
                                    <form action="MovetoWishlist">
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
            <div class="col-md-6" id="checkOut">
                <div class="card card-body address mx-auto my-auto">
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
                                    <h4 class="modal-title mr-auto mx-auto my-auto">Address</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <form name="Address" action="Address" method="post">
                                        <div class="form-group">
                                            <input type="text" class="textColor" name="addressLine1" placeholder="${sessionScope.addressLine1}"
                                                   onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.addressLine1}'">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="textColor" name="addressLine2" placeholder="${sessionScope.addressLine2}"
                                                   onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.addressLine2}'">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="textColor" name="state" placeholder="${sessionScope.state}"
                                                   onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.state}'">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="textColor" name="city" placeholder="${sessionScope.city}"
                                                   onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.city}'">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="textColor" name="pinCode" placeholder="${sessionScope.pinCode}"
                                                   onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.pinCode}'"> 
                                        </div>
                                        <input type="submit" value="Update">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card card-body" id="order">
                    <form action="Order">
                        <input type="submit" value="Checkout">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
