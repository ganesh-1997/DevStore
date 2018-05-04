<%-- 
    Document   : RFIDModule
    Created on : 10 May, 2017, 6:06:07 PM
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
        <title>RFID Module - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>RFID Module</h2>
                    <h4>₹ ${productDetails['RFID Module']}</h4>
                </div>
                <img src="Products/RFIDModule.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="RFID Module">
                            <input type="hidden" name="linkName" value="RFIDModule">
                            <input type="hidden" name="price" value="${productDetails['RFID Module']}">
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
                            <input type="hidden" name="productName" value="RFID Module">
                            <input type="hidden" name="linkName" value="RFIDModule">
                            <input type="hidden" name="price" value="${productDetails['RFID Module']}">
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
                    <h2>RFID Module</h2>
                    <h4>₹ ${productDetails['RFID Module']}</h4>
                </div>

                The SMB130 is a 28 pin DIP module that includes all necessary components for a 13.56 MHz RFID MIFARE®, aside from a PCB antenna.
                The module communicates over UART or IIC with simple protocols.
                It also has 2 general purpose inputs and 2 general purpose outputs for switches and relays.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Interface </td>
                            <td> UART upto 115200 bps </td>
                        </tr>
                        <tr>
                            <td> IIC Interface </td>
                            <td> 400 kHz </td>
                        </tr>
                        <tr>
                            <td> Supply </td>
                            <td> 5V </td>
                        </tr>
                        <tr>
                            <td> Design </td>
                            <td> Read/Write Module excluding Antenna </td>
                        </tr>                        
                        <tr>
                            <td> Inputs </td>
                            <td> 2 </td>
                        </tr>
                        <tr>
                            <td> Outputs </td>
                            <td> 2 </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>