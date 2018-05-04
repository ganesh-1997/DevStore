<%-- 
    Document   : Profile
    Created on : 10 Apr, 2017, 9:28:40 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Profile.css">
        <script>
            $(document).ready(function () {
                $('html, body').animate({
                    scrollTop: $('#profile').offset().top
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
            <div class="col-md-6" id="profile">
                <c:choose>
                    <c:when test="${sessionScope.numberUpdated == true}">
                        <div class="alert alert-success">
                            Number Updated Successfully
                        </div>
                        <c:remove var="numberUpdated"/>
                    </c:when>
                    <c:when test="${sessionScope.numberUpdated == false}">
                        <div class="alert alert-danger">
                            Enter a Valid Number 
                        </div>
                        <c:remove var="numberUpdated"/>
                    </c:when>
                </c:choose>
                <div class="card card-body">My Profile</div>
                <form name="Profile" action="Profile" method="post">
                    <div class="form-group">
                        <input type="text" class="textColor" name="name" placeholder="${sessionScope.name}" disabled="">
                    </div>
                    <div class="form-group">
                        <input type="text" class="textColor" name="email" placeholder="${sessionScope.email}" disabled=""> 
                    </div>
                    <div class="form-group">
                        <input type="text" class="textColor" name="number" placeholder="${sessionScope.number}"
                               onfocus="this.placeholder=''" onblur="this.placeholder='${sessionScope.number}'"> <br>
                    </div>
                    <input type="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>