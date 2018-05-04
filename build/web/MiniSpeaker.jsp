<%-- 
    Document   : MiniSpeaker
    Created on : 4 May, 2017, 4:25:20 PM
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
        <title>Mini Speaker - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Mini Speaker</h2>
                    <h4>₹ ${productDetails['Mini Speaker']}</h4>
                </div>
                <img src="Products/MiniSpeaker.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Mini Speaker">
                            <input type="hidden" name="linkName" value="MiniSpeaker">
                            <input type="hidden" name="price" value="${productDetails['Mini Speaker']}">
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
                            <input type="hidden" name="productName" value="Mini Speaker">
                            <input type="hidden" name="linkName" value="MiniSpeaker">
                            <input type="hidden" name="price" value="${productDetails['Mini Speaker']}">
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
                    <h2>Mini Speaker</h2>
                    <h4>₹ ${productDetails['Mini Speaker']}</h4>
                </div>

                The Hamburger Mini Speaker is a 3W economical speaker option for any project needing stand-alone sound. 
                The Hamburger features a built-in lithium polymer battery for portable application, a 3.5mm stereo jack and two volume options for control.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Power </td>
                            <td> 3W </td>
                        </tr>
                        <tr>
                            <td> Standby </td>
                            <td> 1 to 2 Hours </td>
                        </tr>
                        <tr>
                            <td> Cable </td>
                            <td> USB Mini-B </td>
                        </tr>
                        <tr>
                            <td> Battery </td>
                            <td> 3.7V @ 180mA Li-Po Battery </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>