<%-- 
    Document   : Profile
    Created on : 10 Apr, 2017, 9:28:40 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile - Dev Store</title>
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
                    <li class="list-group-item active"><a href="Profile.jsp">Profile</a></li>
                    <li class="list-group-item"><a href="Password.jsp">Password</a></li>
                    <li class="list-group-item"><a href="Address.jsp">Address</a></li>
                </ul>
            </div>
            <div class="col-sm-8">
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
                <div class="panel panel-default">
                    <div class="panel-body">My Profile</div>
                </div>
                <form name="Profile" action="Profile" method="post">
                    <div class="form-group">
                        <input type="text" class = "textColor" name="name" placeholder = "${sessionScope.name}" disabled="">
                    </div>
                    <div class="form-group">
                        <input type="text" class = "textColor" name="email" placeholder = "${sessionScope.email}" disabled=""> 
                    </div>
                    <div class="form-group">
                        <input type="text" class="textColor" name="number" placeholder = "${sessionScope.number}"
                               onfocus="this.placeholder = ''" onblur="this.placeholder = '${sessionScope.number}'"> <br>
                    </div>
                    <input type = "submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>