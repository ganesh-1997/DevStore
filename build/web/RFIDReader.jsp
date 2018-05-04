<%-- 
    Document   : RFIDReader
    Created on : 10 May, 2017, 6:18:49 PM
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
        <title>RFID Reader - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>RFID Reader</h2>
                    <h4>₹ ${productDetails['RFID Reader']}</h4>
                </div>
                <img src="Products/RFIDReader.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="RFID Reader">
                            <input type="hidden" name="linkName" value="RFIDReader">
                            <input type="hidden" name="price" value="${productDetails['RFID Reader']}">
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
                            <input type="hidden" name="productName" value="RFID Reader">
                            <input type="hidden" name="linkName" value="RFIDReader">
                            <input type="hidden" name="price" value="${productDetails['RFID Reader']}">
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
                    <h2>RFID Reader</h2>
                    <h4>₹ ${productDetails['RFID Reader']}</h4>
                </div>

                RFID is the wireless non-contact use of radio-frequency electromagnetic fields, for the purposes of identifying and tracking tags attached to objects. 
                This is the ID-20LA, a very simple to use RFID reader module from ID Innovations.
                Power the module, hold up a 125kHz card, and get a serial string output containing the unique ID of the card.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Supply </td>
                            <td> 2.8 - 5V </td>
                        </tr>
                        <tr>
                            <td> Frequency </td>
                            <td> 125 kHz </td>
                        </tr>
                        <tr>
                            <td> Read Range </td>
                            <td> 180mm </td>
                        </tr>
                        <tr>
                            <td> TID </td>
                            <td> 64 Bit </td>
                        </tr>                        
                        <tr>
                            <td> Output</td>
                            <td> 9600bps TTL, RS-232  </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>