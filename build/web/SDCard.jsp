<%-- 
    Document   : RPiSDCard
    Created on : 8 Apr, 2017, 11:43:49 PM
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
        <title>SD Card - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>SD Card</h2>
                    <h4>₹ ${productDetails['SD Card']}</h4>
                </div>
                <img src="Products/SDCard.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="SD Card">
                            <input type="hidden" name="linkName" value="SDCard">
                            <input type="hidden" name="price" value="${productDetails['SD Card']}">
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
                            <input type="hidden" name="productName" value="SD Card">
                            <input type="hidden" name="linkName" value="SDCard">
                            <input type="hidden" name="price" value="${productDetails['SD Card']}">
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
                    <h2>SD Card</h2>
                    <h4>₹ ${productDetails['SD Card']}</h4>
                </div>
                This is an class 10 16GB micro SDHC card that is pre-installed with the NOOBS operating system for the Raspberry Pi. 
                This SD card and adapter is perfect for a Raspberry Pi first timer or beginner while still providing convenience for anyone with more experience with the platform.
                This little card allows you to start using your Raspberry Pi straight out of the box without worrying about imaging it on your own.
            </div>
        </div>
    </body>
</html>