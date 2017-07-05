<%-- 
    Document   : RaspberryPiCamera
    Created on : 4 May, 2017, 3:53:18 PM
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
        <title>Raspberry Pi Camera Module - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/RaspberryPiCamera.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Raspberry Pi Camera">
                            <input type="hidden" name="linkName" value="RaspberryPiCamera">
                            <input type="hidden" name="price" value="${productDetails['Raspberry Pi Camera']}">
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
                            <input type="hidden" name="productName" value="Raspberry Pi Camera">
                            <input type="hidden" name="linkName" value="RaspberryPiCamera">
                            <input type="hidden" name="price" value="${productDetails['Raspberry Pi Camera']}">
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
                <h2>Raspberry Pi Camera Module V2</h2>
                <h4>₹ ${productDetails['Raspberry Pi Camera']}</h4>
                This 8MP camera module is capable of 1080p video and still images that connect directly to your Raspberry Pi. 
                This is the plug-and-play-compatible latest version of the Raspbian operating system, making it perfect for time-lapse photography, recording video, motion detection and security applications.
                Connect the ribbon cable to the CSI (Camera Serial Interface) port on your Raspberry Pi, and you are ready to go!
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Image Sensor </td>
                            <td> Sony IMX219 </td>
                        </tr>
                        <tr>
                            <td> Photo Resolution </td>
                            <td> 3280 x 2464p </td>
                        </tr>
                        <tr>
                            <td> Video Resolution </td>
                            <td> 1080p, 720p and 640 x 480p </td>
                        </tr>
                        <tr>
                            <td> Interface </td>
                            <td> CSI </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>