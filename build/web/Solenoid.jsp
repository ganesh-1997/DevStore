<%-- 
    Document   : Solenoid
    Created on : 4 May, 2017, 4:42:25 PM
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
        <title>Solenoid - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Solenoid</h2>
                    <h4>₹ ${productDetails['Solenoid']}</h4>
                </div>
                <img src="Products/Solenoid.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Solenoid">
                            <input type="hidden" name="linkName" value="Solenoid">
                            <input type="hidden" name="price" value="${productDetails['Solenoid']}">
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
                            <input type="hidden" name="productName" value="Solenoid">
                            <input type="hidden" name="linkName" value="Solenoid">
                            <input type="hidden" name="price" value="${productDetails['Solenoid']}">
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
                    <h2>Solenoid</h2>
                    <h4>₹ ${productDetails['Solenoid']}</h4>
                </div>                
                Solenoids are a great way to induce linear motion for pushing, pulling or controlling switches and levers. 
                This solenoid is designed to work directly with 5V which makes it a great match for embedded projects. 
                It has a throw of about 4.5mm and 2 M2 mounting holes on the body.
                The wire lead is about 2" long and is terminated with a 2-pin JST PH connector.
            </div>
        </div>
    </body>
</html>