<%-- 
    Document   : RotaryEncoder
    Created on : 10 May, 2017, 7:50:29 PM
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
        <title> Rotary Encoder - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Rotary Encoder</h2>
                    <h4>₹ ${productDetails['Rotary Encoder']}</h4>
                </div>
                <img src="Products/RotaryEncoder.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Rotary Encoder">
                            <input type="hidden" name="linkName" value="RotaryEncoder">
                            <input type="hidden" name="price" value="${productDetails['Rotary Encoder']}">
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
                            <input type="hidden" name="productName" value="Rotary Encoder">
                            <input type="hidden" name="linkName" value="RotaryEncoder">
                            <input type="hidden" name="price" value="${productDetails['Rotary Encoder']}">
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
                    <h2>Rotary Encoder</h2>
                    <h4>₹ ${productDetails['Rotary Encoder']}</h4>
                </div>
                The rotary encoder outputs gray code which can be interpreted using a microcontroller and find the direction the shaft is turning and by how much.
                This allows you to add feedback to motor control systems.
                Encoders of this kind are often used in balancing robots.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Resolution </td>
                            <td> 1024 pulse/rotation </td>
                        </tr>
                        <tr>
                            <td> Allowable Radial Load </td>
                            <td> 5N </td>
                        </tr>                        
                        <tr>
                            <td> Allowable Axial Load </td>
                            <td> 3N </td>
                        </tr>
                        <tr>
                            <td> Input Voltage </td>
                            <td> 5 - 12V DC </td>
                        </tr>
                        <tr>
                            <td> Maximum Rotating Speed </td>
                            <td> 6000rpm </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>