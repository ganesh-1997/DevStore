<%-- 
    Document   : SolderingIron
    Created on : 9 Apr, 2017, 12:12:21 AM
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
        <title>Soldering Iron - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Soldering Iron</h2>
                    <h4>₹ ${productDetails['Soldering Iron']}</h4>
                </div>
                <img src="Products/SolderingIron.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Soldering Iron">
                            <input type="hidden" name="linkName" value="SolderingIron">
                            <input type="hidden" name="price" value="${productDetails['Soldering Iron']}">
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
                            <input type="hidden" name="productName" value="Soldering Iron">
                            <input type="hidden" name="linkName" value="SolderingIron">
                            <input type="hidden" name="price" value="${productDetails['Soldering Iron']}">
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
                    <h2>Soldering Iron</h2>
                    <h4>₹ ${productDetails['Soldering Iron']}</h4>
                </div>                
                This is a very simple fixed temperature, quick heating, 30W 110/120 VAC soldering iron. 
                The iron is attached to a six foot cable which is terminated with a type B plug.
                There is a nice grippy surface at the end of the handle that does double duty as a nice heat shield.
                A 1/32" pointed tip is included.
            </div>
        </div>
    </body>
</html>