<%-- 
    Document   : Servo
    Created on : 9 Apr, 2017, 12:29:08 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Product.css">
        <title>Servo - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Servo</h2>
                    <h4>₹ ${productDetails['Servo']}</h4>
                </div>
                <img src="Products/Servo.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Servo">
                            <input type="hidden" name="linkName" value="Servo">
                            <input type="hidden" name="price" value="${productDetails['Servo']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fas fa-shopping-cart"></i> Add to Bag
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fas fa-shopping-cart"></i> Add to Bag
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                    <div class="col-md-6">
                        <form action="WishlistAdd" method="post">
                            <input type="hidden" name="productName" value="Servo">
                            <input type="hidden" name="linkName" value="Servo">
                            <input type="hidden" name="price" value="${productDetails['Servo']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="far fa-bookmark"></i> Save
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="far fa-bookmark"></i> Save
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8 col-sm-8 mx-auto">
                <div class="col-12 d-none d-md-block d-lg-block mx-auto">
                    <h2>Servo</h2>
                    <h4>₹ ${productDetails['Servo']}</h4>
                </div>
                This powerful motor is the Hitec HS-625MG Servo. 
                This is one of the strongest metal gear servos that is available at a great price.
                The HS-625MG takes in 6V and delivers 94 oz-in, maximum torque of 0.15 sec/60°, and those are numbers you can rely on!
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Direction </td>
                            <td> Clockwise </td>
                        </tr>
                        <tr>
                            <td> Rotation </td>
                            <td> 180° </td>
                        </tr>
                        <tr>
                            <td> Bearing </td>
                            <td> Dual Ball </td>
                        </tr>
                        <tr>
                            <td> Voltage </td>
                            <td> 4.8 / 6V </td>
                        </tr>
                        <tr>
                            <td> Speed </td>
                            <td> 0.18 / 0.15 sec/60° </td>
                        </tr>
                        <tr>
                            <td> Holding Torque </td>
                            <td> 76.37 / 94.43 oz-in </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>