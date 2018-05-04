<%-- 
    Document   : RFIDTag
    Created on : 10 May, 2017, 6:14:00 PM
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
        <title>RFID Tag - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>RFID Tag</h2>
                    <h4>₹ ${productDetails['RFID Tag']}</h4>
                </div>
                <img src="Products/RFIDTag.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="RFID Tag">
                            <input type="hidden" name="linkName" value="RFIDTag">
                            <input type="hidden" name="price" value="${productDetails['RFID Tag']}">
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
                            <input type="hidden" name="productName" value="RFID Tag">
                            <input type="hidden" name="linkName" value="RFIDTag">
                            <input type="hidden" name="price" value="${productDetails['RFID Tag']}">
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
                    <h2>RFID Tag</h2>
                    <h4>₹ ${productDetails['RFID Tag']}</h4>
                </div>
                These paper-thin EPCglobal Gen2 tags work with our Simultaneous RFID reader. The tags can read and be written to — and also have a kill feature.
                Each tag comes with a TID (Truly Unique ID) that can’t be changed, but there’s plenty of memory for you to write and read from.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Memory </td>
                            <td> 800 Bits </td>
                        </tr>
                        <tr>
                            <td> Design </td>
                            <td> EPCglobal Gen2 and ISO/IEC 18000-6c </td>
                        </tr>
                        <tr>
                            <td> User Bits </td>
                            <td> 512 </td>
                        </tr>
                        <tr>
                            <td> TID </td>
                            <td> 64 Bit </td>
                        </tr>                        
                        <tr>
                            <td> Access & Kill Password </td>
                            <td> 32 Bits </td>
                        </tr>
                    </tbody>
                </table>                
            </div>
        </div>
    </body>
</html>