<%-- 
    Document   : RoboticArm
    Created on : 4 May, 2017, 4:44:59 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Product.css">
        <title>Robotic Arm - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/RoboticArm.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Robotic Arm">
                            <input type="hidden" name="linkName" value="RoboticArm">
                            <input type="hidden" name="price" value="${productDetails['Robotic Arm']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to Cart
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to Cart
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                    <div class = "col-md-6">
                        <form action="WishlistAdd" method="post">
                            <input type="hidden" name="productName" value="Robotic Arm">
                            <input type="hidden" name="linkName" value="RoboticArm">
                            <input type="hidden" name="price" value="${productDetails['Robotic Arm']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fa fa-bookmark-o" aria-hidden="true"></i> Add to Wishlist
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fa fa-bookmark-o" aria-hidden="true"></i> Add to Wishlist
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h2>Robotic Arm</h2>
                <h4>₹ ${productDetails['Robotic Arm']}</h4>
                The uArm is an Arduino-powered, 4-axis robot arm which can be set up and used straight off of your desktop.
                Each uArm is equipped with three digital servos at the base to control the movement of the arm.
                It contains a fully assembled metal body uArm, one uDuino, one uArm shield, a vacuum gripper system, a screwdriver, and a USB and wall adapter power supply.
                The uArm shield not only serves as a gateway to control the uArm, it also features a Learning Mode that provides a way to record and replay manually assigned movement you dictated to the robot arm.
                Simply press the “Record” button on the uArm shield, physically move the arm as you desire, and then end the recording.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Mechanism </td>
                            <td> 4-Axis Parallel </td>
                        </tr>
                        <tr>
                            <td> Arm Reach </td>
                            <td> 70-340mm </td>
                        </tr>
                        <tr>
                            <td> Body </td>
                            <td> Aluminum </td>
                        </tr>
                        <tr>
                            <td> Suction Weight </td>
                            <td> 1kg </td>
                        </tr>
                        <tr>
                            <td> Supported Platforms </td>
                            <td> Windows, Linux, OS X </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>