<%-- 
    Document   : SolderLead
    Created on : 4 May, 2017, 4:35:34 PM
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
        <title>Solder Lead - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Solder Lead</h2>
                    <h4>₹ ${productDetails['Solder Lead']}</h4>
                </div>
                <img src="Products/SolderLead.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Solder Lead">
                            <input type="hidden" name="linkName" value="SolderLead">
                            <input type="hidden" name="price" value="${productDetails['Solder Lead']}">
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
                            <input type="hidden" name="productName" value="Solder Lead">
                            <input type="hidden" name="linkName" value="SolderLead">
                            <input type="hidden" name="price" value="${productDetails['Solder Lead']}">
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
                    <h2>Solder Lead</h2>
                    <h4>₹ ${productDetails['Solder Lead']}</h4>
                </div>
                This is a solder lead with a 63-37 water soluble resin core. Easy to solder with and is recommended for beginners.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Thickness </td>
                            <td> 0.031" </td>
                        </tr>
                        <tr>
                            <td> Mix </td>
                            <td> 63% Sn - 37% Pb </td>
                        </tr>
                        <tr>
                            <td> Length </td>
                            <td> 5ft </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>