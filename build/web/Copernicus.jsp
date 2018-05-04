<%-- 
    Document   : Copernicus
    Created on : 8 Apr, 2017, 10:08:45 PM
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
        <title>Copernicus - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Copernicus</h2>
                    <h4>₹ ${productDetails['Copernicus']}</h4>
                </div>
                <img src="Products/Copernicus.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Copernicus">
                            <input type="hidden" name="linkName" value="Copernicus">
                            <input type="hidden" name="price" value="${productDetails['Copernicus']}">
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
                            <input type="hidden" name="productName" value="Copernicus">
                            <input type="hidden" name="linkName" value="Copernicus">
                            <input type="hidden" name="price" value="${productDetails['Copernicus']}">
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
                    <h2>Copernicus</h2>
                    <h4>₹ ${productDetails['Copernicus']}</h4>
                </div>
                Copernicus II is the latest iteration of the popular Copernicus GPS module from Trimble. 
                It features the TrimCore™ navigation software for extremely fast startup times and high performance in foliage canopy and urban canyon environments. 
                Also, the Copernicus II is compatible with all applications using the previous generation of Copernicus module.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Interface </td>
                            <td> UART </td>
                        </tr>
                        <tr>
                            <td> Sensitivity </td>
                            <td> -160dBm </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>