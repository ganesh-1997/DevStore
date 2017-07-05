<%-- 
    Document   : Password
    Created on : 1 May, 2017, 10:03:41 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password - Dev Store</title>
        <link rel="stylesheet" type="text/css" href="Profile.css">
    </head>
    <body>
        <div class="row">
            <div class="col-sm-4">
                <ul class="list-group">
                    <li class="list-group-item">ORDERS</li>
                    <li class="list-group-item"><a href="Orders">Orders</a></li>
                </ul>
                <ul class="list-group">
                    <li class="list-group-item">ACCOUNT</li>
                    <li class="list-group-item"><a href="Profile.jsp">Profile</a></li>
                    <li class="list-group-item active"><a href="Password.jsp">Password</a></li>
                    <li class="list-group-item"><a href="Address.jsp">Address</a></li>
                </ul>
            </div>
            <div class="col-sm-8">
                <div class="panel panel-default">
                    <div class="panel-body">Edit your Password</div>
                </div>
                <form name = "Password" action = "Password" method = "post">
                    <div class="form-group">
                        <input type="password" name="oldPassword" placeholder = "Current Password" required maxlength="20"
                               onfocus="this.placeholder = ''" onblur="this.placeholder = 'Current Password'"
                               oninvalid="this.setCustomValidity('Enter Current Password')" oninput="setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <input type="password" name="newPassword" placeholder = "New Password" required maxlength="20"
                               onfocus="this.placeholder = ''" onblur="this.placeholder = 'New Password'"
                               oninvalid="this.setCustomValidity('Enter New Password')" oninput="setCustomValidity('')">
                    </div>
                    <div class="form-group">
                        <input type="password" name="confirmPassword" placeholder = "Confirm Password" required maxlength="20"
                               onfocus="this.placeholder = ''" onblur="this.placeholder = 'Confirm Password'"
                               oninvalid="this.setCustomValidity('Enter Confirm Password')" oninput="setCustomValidity('')">
                    </div>
                    <input type = "submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>