<%-- 
    Document   : VibrationMotor
    Created on : 10 May, 2017, 7:50:45 PM
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
        <title>Vibration Motor - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Vibration Motor</h2>
                    <h4>₹ ${productDetails['Vibration Motor']}</h4>
                </div>
                <img src="Products/VibrationMotor.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Vibration Motor">
                            <input type="hidden" name="linkName" value="VibrationMotor">
                            <input type="hidden" name="price" value="${productDetails['Vibration Motor']}">
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
                            <input type="hidden" name="productName" value="Vibration Motor">
                            <input type="hidden" name="linkName" value="VibrationMotor">
                            <input type="hidden" name="price" value="${productDetails['Vibration Motor']}">
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
                    <h2>Vibration Motor</h2>
                    <h4>₹ ${productDetails['Vibration Motor']}</h4>
                </div>                
                This shaft less vibratory motor is perfect for non-audible indicators.
                Use in any number of applications to indicate to the wearer when a status has changed.
                All moving parts are protected within the housing.
                With a 2 - 3.6V operating range, these units operate efficiently at 3V.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Speed </td>
                            <td> 13000 ± 3000rpm </td>
                        </tr>
                        <tr>
                            <td> Current </td>
                            <td> 60mA </td>
                        </tr>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 2.3 - 3.6VDC </td>
                        </tr>
                        <tr>
                            <td> Starting Voltage </td>
                            <td> 2V </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>