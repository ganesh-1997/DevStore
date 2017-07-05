<%-- 
    Document   : Address
    Created on : 26 Apr, 2017, 12:08:34 AM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Address - Dev Store</title>
        <script type="text/javascript" src="Validate.js"></script>
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
                    <li class="list-group-item"><a href="Password.jsp">Password</a></li>
                    <li class="list-group-item active"><a href="Address.jsp">Address</a></li>
                </ul>
            </div>
            <div class="col-sm-8">
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
                <div class="panel panel-default">
                    <div class="panel-body">Edit your Address</div>
                </div>
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
    </body>
</html>