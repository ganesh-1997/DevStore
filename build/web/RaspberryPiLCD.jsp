<%-- 
    Document   : RaspberryPiLCD
    Created on : 8 Apr, 2017, 9:28:22 PM
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
        <title>Raspberry Pi LCD - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Raspberry Pi LCD</h2>
                    <h4>₹ ${productDetails['Raspberry Pi LCD']}</h4>
                </div>
                <img src="Products/RaspberryPiLCD.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Raspberry Pi LCD">
                            <input type="hidden" name="linkName" value="RaspberryPiLCD">
                            <input type="hidden" name="price" value="${productDetails['Raspberry Pi LCD']}">
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
                            <input type="hidden" name="productName" value="Raspberry Pi LCD">
                            <input type="hidden" name="linkName" value="RaspberryPiLCD">
                            <input type="hidden" name="price" value="${productDetails['Raspberry Pi LCD']}">
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
                    <h2>Raspberry Pi LCD</h2>
                    <h4>₹ ${productDetails['Raspberry Pi LCD']}</h4>
                </div>
                This 7" Touch Screen LCD provides the ability to create a standalone device that can be utilized as a custom tablet or an all-in-one interactive interface for a future project.
                Each LCD features a full color 800 x 480 capacitive touch display that connects to the Pi via an included adapter board which handles all the power and signal conversion needs.
                <br><br>
                What makes this LCD great is the fact that it only requires two connections to be hooked up to the Pi;
                Power from the Pi’s GPIO port and a ribbon cable that connects to the DSI port present on all Raspberry Pi’s.
                Touchscreen drivers with support for 10-finger touch and an on-screen keyboard allow you to use your Raspberry Pi without an external keyboard or mouse.\
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Screen Resolution </td>
                            <td> 800 x 480 pixels @ 60fps </td>
                        </tr>
                        <tr>
                            <td> View Angle </td>
                            <td> 70° </td>
                        </tr>
                        <tr>
                            <td> Text Color </td>
                            <td> Full Color </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>