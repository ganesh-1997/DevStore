<%-- 
    Document   : StepperMotor
    Created on : 9 Apr, 2017, 12:18:07 PM
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
        <title>Stepper Motor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Stepper Motor</h2>
                    <h4>₹ ${productDetails['Stepper Motor']}</h4>
                </div>
                <img src="Products/StepperMotor.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Stepper Motor">
                            <input type="hidden" name="linkName" value="StepperMotor">
                            <input type="hidden" name="price" value="${productDetails['Stepper Motor']}">
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
                            <input type="hidden" name="productName" value="Stepper Motor">
                            <input type="hidden" name="linkName" value="StepperMotor">
                            <input type="hidden" name="price" value="${productDetails['Stepper Motor']}">
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
                    <h2>Stepper Motor</h2>
                    <h4>₹ ${productDetails['Stepper Motor']}</h4>
                </div>
                Stepper Motors are great motors for position control. 
                Steppers are a special segment of brushless motors.
                They are purposely built for high-holding torque.
                This high-holding torque gives the user the ability to incrementally step to the next position.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Phase </td>
                            <td> 2 Phase </td>
                        </tr>
                        <tr>
                            <td> Steps per Revolution </td>
                            <td> 200 </td>
                        </tr>
                        <tr>
                            <td> Step Angle </td>
                            <td> 1.8° </td>
                        </tr>
                        <tr>
                            <td> Voltage </td>
                            <td> 3.2V </td>
                        </tr>
                        <tr>
                            <td> Current </td>
                            <td> 2A / Phase </td>
                        </tr>
                        <tr>
                            <td> Holding Torque </td>
                            <td> 125 oz.in </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>