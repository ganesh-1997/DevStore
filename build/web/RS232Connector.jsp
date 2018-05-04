<%-- 
    Document   : RS232Connector
    Created on : 10 May, 2017, 7:35:03 PM
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
        <title>RS232 Connector - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>RS232 Connector</h2>
                    <h4>₹ ${productDetails['RS232 Connector']}</h4>
                </div>
                <img src="Products/RS232Connector.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="RS232 Connector">
                            <input type="hidden" name="linkName" value="RS232Connector">
                            <input type="hidden" name="price" value="${productDetails['RS232 Connector']}">
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
                            <input type="hidden" name="productName" value="RS232 Connector">
                            <input type="hidden" name="linkName" value="RS232Connector">
                            <input type="hidden" name="price" value="${productDetails['RS232 Connector']}">
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
                    <h2>RS232 Connector</h2>
                    <h4>₹ ${productDetails['RS232 Connector']}</h4>
                </div>                
                There are a lot of devices out there that still communicate over RS232 but we bet your new laptop isn’t one of them. 
                This 6ft connector plugs into your computer’s USB port and provides you with a DB-9 RSR232 connection. 
                After installing the drivers, the FTDI chipset inside the cable will enumerate as a COM port with a baud rate adjustable to whatever setup you want to connect to.
            </div>
        </div>
    </body>
</html>