<%-- 
    Document   : Password
    Created on : 1 May, 2017, 10:03:41 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Profile.css">
        <script>
            $(document).ready(function () {
                $('html, body').animate({
                    scrollTop: $('#editPwd').offset().top
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
            <div class="col-md-6" id="editPwd">
                <c:choose>
                    <c:when test="${sessionScope.passwordUpdated == true}">
                        <div class="alert alert-success">
                            Password Updated Successfully
                        </div>
                        <c:remove var="passwordUpdated"/>
                    </c:when>
                    <c:when test="${sessionScope.passwordUpdated == false}">
                        <div class="alert alert-danger">
                            Incorrect Password 
                        </div>
                        <c:remove var="passwordUpdated"/>
                    </c:when>
                </c:choose>
                <div class="card card-body">Change your Password</div>
                <form name="Password" action="Password" method="post">
                    <div class="form-group">
                        <input type="password" name="oldPassword" placeholder="Current Password" required maxlength="20"
                               onfocus="this.placeholder=''" onblur="this.placeholder='Current Password'"
                               oninvalid="this.setCustomValidity('Enter Current Password')" oninput="setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <input type="password" name="newPassword" placeholder="New Password" required maxlength="20"
                               onfocus="this.placeholder=''" onblur="this.placeholder='New Password'"
                               oninvalid="this.setCustomValidity('Enter New Password')" oninput="setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <input type="password" name="confirmPassword" placeholder="Confirm Password" required maxlength="20"
                               onfocus="this.placeholder=''" onblur="this.placeholder='Confirm Password'"
                               oninvalid="this.setCustomValidity('Enter Confirm Password')" oninput="setCustomValidity('')">
                    </div>
                    <input type="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>