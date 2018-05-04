<%-- 
    Document   : IntelEdison
    Created on : 6 Apr, 2017, 5:59:19 PM
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
        <title>Intel® Edison - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Intel® Edison</h2>
                    <h4>₹ ${productDetails['Intel Edison']}</h4>
                </div>
                <img src="Products/IntelEdison.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Intel Edison">
                            <input type="hidden" name="linkName" value="IntelEdison">
                            <input type="hidden" name="price" value="${productDetails['Intel Edison']}">
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
                            <input type="hidden" name="productName" value="Intel Edison">
                            <input type="hidden" name="linkName" value="IntelEdison">
                            <input type="hidden" name="price" value="${productDetails['Intel Edison']}">
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
                    <h2>Intel® Edison</h2>
                    <h4>₹ ${productDetails['Intel Edison']}</h4>
                </div>
                The Intel® Edison is an ultra small computing platform that will change the way you look at embedded electronics. 
                Powered by the Intel® Atom™ SoC dual-core CPU and including an integrated Wi-Fi, Bluetooth LE and 70-pin connector to attach a veritable slew of shield-like Blocks. 
                It’s no wonder how this little guy is reducing the barrier of entry on the world of electronics!
                <br><br>
                The Intel Edison packs a robust set of features in a small size, delivering great performance, durability and a broad spectrum of I/O and software support.
                <table class="table table-hover">                    
                    <tbody>
                        <tr>
                            <td> Design </td>
                            <td> Intel® Atom™ SoC including a Dual-Core CPU and a Single Core MCU </td>
                        </tr>
                        <tr>
                            <td> Power </td>
                            <td> 5V </td>
                        </tr>
                        <tr>
                            <td> Compatibility </td>
                            <td> Arduino Uno (Except 4 PWM) </td>
                        </tr>

                        <tr>
                            <td> Features </td>
                            <td> Integrated Wi-Fi, Bluetooth LE, Memory, and Storage </td>
                        </tr>
                        <tr>
                            <td> Digital I/O Pins </td>
                            <td> 20 (4 PWM Pins) </td>
                        </tr>
                        <tr>
                            <td> Analog Input Pins </td>
                            <td> 6 </td>
                        </tr>
                        <tr>
                            <td> Ports </td>
                            <td> UART, IIC, SPI, SD Card </td>
                        </tr>
                        <tr>
                            <td> Connector </td>
                            <td> microUSB </td>
                        </tr>
                        <tr>
                            <td> Software </td>
                            <td> Open Source </td>
                        </tr>
                        <tr>
                            <td> Support </td>
                            <td> Yocto Linux, Arduino, Python, Node.js, Wolfram </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>