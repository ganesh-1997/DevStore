<%-- 
    Document   : Address
    Created on : 26 Apr, 2017, 12:08:34 AM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Profile.css">
        <script>
            $(document).ready(function () {
                $('html, body').animate({
                    scrollTop: $('#editAddress').offset().top
                }, 'slow');
            });
        </script>
    </head>
    <body>
        <div class="row">
            <div class="col-md-6">
                <ul class="list-group mb-3 mx-auto">
                    <a href="Profile.jsp" class="list-group-item d-flex justify-content-between lh-condensed">
                        <span class="text-muted"><i class="fas fa-user"></i></span>
                        <div>
                            <h6 class="my-0">Profile </h6>
                            <small class="text-muted">View, Edit Number</small>
                        </div>
                    </a>
                    <a href="Address.jsp" class="list-group-item d-flex justify-content-between lh-condensed">
                        <span class="text-muted"><i class="fas fa-map-marker"></i></span>
                        <div>
                            <h6 class="my-0">Address</h6>
                            <small class="text-muted">Edit your Address</small>
                        </div>
                    </a>
                    <a href="Password.jsp" class="list-group-item d-flex justify-content-between lh-condensed">
                        <span class="text-muted"><i class="fas fa-unlock"></i></span>
                        <div>
                            <h6 class="my-0">Password</h6>
                            <small class="text-muted">Change Password</small>
                        </div>
                    </a>
                    <a href="Cart" class="list-group-item d-flex justify-content-between lh-condensed">
                        <span class="text-muted"><i class="fas fa-shopping-cart"></i></span>
                        <div>
                            <h6 class="my-0">Cart</h6>
                            <small class="text-muted">Your Cart</small>
                        </div>
                    </a>
                    <a href="Wishlist" class="list-group-item d-flex justify-content-between lh-condensed">
                        <span class="text-muted"><i class="far fa-bookmark"></i></span>
                        <div>
                            <h6 class="my-0">Wishlist</h6>
                            <small class="text-muted">Saved Items</small>
                        </div>
                    </a>
                    <a href="Orders" class="list-group-item d-flex justify-content-between lh-condensed">
                        <span class="text-muted"><i class="fas fa-history"></i></span>
                        <div>
                            <h6 class="my-0">Orders</h6>
                            <small class="text-muted">Order History</small>
                        </div>
                    </a>
                </ul>
            </div>
            <div class="col-md-6" id="editAddress">
                <c:choose>
                    <c:when test="${sessionScope.addressUpdated == true}">
                        <div class="alert alert-success">
                            Updated Address Successfully
                        </div>
                        <c:remove var="addressUpdated"/>
                    </c:when>
                    <c:when test="${sessionScope.addressUpdated == false}">
                        <div class="alert alert-danger">
                            Enter a Valid Address
                        </div>
                        <c:remove var="addressUpdated"/>
                    </c:when>
                </c:choose>
                <div class="card card-body">Edit your Adddress</div>
                <form name="Address" action="Address" method="post">
                    <div class="form-group">
                        <input type="text" class="textColor" name="addressLine1" placeholder="${sessionScope.addressLine1}"
                               onfocus="this.placeholder=''" onblur="this.placeholder='${sessionScope.addressLine1}'">
                    </div>
                    <div class="form-group">
                        <input type="text" class="textColor" name="addressLine2" placeholder="${sessionScope.addressLine2}"
                               onfocus="this.placeholder=''" onblur="this.placeholder='${sessionScope.addressLine2}'">
                    </div>
                    <div class="form-group">
                        <input type="text" class="textColor" name="state" placeholder="${sessionScope.state}"
                               onfocus="this.placeholder=''" onblur="this.placeholder='${sessionScope.state}'">
                    </div>
                    <div class="form-group">
                        <input type="text" class="textColor" name="city" placeholder="${sessionScope.city}"
                               onfocus="this.placeholder=''" onblur="this.placeholder='${sessionScope.city}'">
                    </div>
                    <div class="form-group">
                        <input type="text" class="textColor" name="pinCode" placeholder="${sessionScope.pinCode}"
                               onfocus="this.placeholder=''" onblur="this.placeholder='${sessionScope.pinCode}'"> 
                    </div>
                    <input type="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>