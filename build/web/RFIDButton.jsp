<%-- 
    Document   : RFIDButton
    Created on : 10 May, 2017, 5:59:56 PM
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
        <title>RFID Button - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>RFID Button</h2>
                    <h4>₹ ${productDetails['RFID Button']}</h4>
                </div>
                <img src="Products/RFIDButton.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="RFID Button">
                            <input type="hidden" name="linkName" value="RFIDButton">
                            <input type="hidden" name="price" value="${productDetails['RFID Button']}">
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
                            <input type="hidden" name="productName" value="RFID Button">
                            <input type="hidden" name="linkName" value="RFIDButton">
                            <input type="hidden" name="price" value="${productDetails['RFID Button']}">
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
                    <h2>RFID Button</h2>
                    <h4>₹ ${productDetails['RFID Button']}</h4>
                </div>

                This is a simple, thumbnail-size RFID tag.
                These tags are great for sensing presence, identification.
                These are very small, so they can be easily sewn into clothing or inserted into enclosures.
                Each tag comes with a unique 32-bit ID code and is not re-programmable.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Encoding </td>
                            <td> Manchester </td>
                        </tr>
                        <tr>
                            <td> Bits </td>
                            <td> 32 Bit Unique ID </td>
                        </tr>
                        <tr>
                            <td> Read Frequency </td>
                            <td> 125kHz </td>
                        </tr>
                        <tr>
                            <td> Design </td>
                            <td> EM4001 ISO based RFID IC </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>