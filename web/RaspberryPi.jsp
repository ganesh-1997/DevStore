<%-- 
    Document   : RaspberryPi
    Created on : 6 Apr, 2017, 12:13:49 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Product.css">
        <title>Raspberry Pi 3 - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/RaspberryPi.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Raspberry Pi">
                            <input type="hidden" name="linkName" value="RaspberryPi">
                            <input type="hidden" name="price" value="${productDetails['Raspberry Pi']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to Cart
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fa fa-shopping-cart" aria-hidden="true"></i> Add to Cart
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                    <div class = "col-md-6">
                        <form action="WishlistAdd" method="post">
                            <input type="hidden" name="productName" value="Raspberry Pi">
                            <input type="hidden" name="linkName" value="RaspberryPi">
                            <input type="hidden" name="price" value="${productDetails['Raspberry Pi']}">
                            <c:choose>
                                <c:when test="${sessionScope.email == null}">
                                    <button type="submit" class="btn btn-primary btn-md" disabled="disabled">
                                        <i class="fa fa-bookmark-o" aria-hidden="true"></i> Add to Wishlist
                                    </button>
                                </c:when>
                                <c:otherwise>
                                    <button type="submit" class="btn btn-primary btn-md">
                                        <i class="fa fa-bookmark-o" aria-hidden="true"></i> Add to Wishlist
                                    </button>
                                </c:otherwise>
                            </c:choose>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <h2>Raspberry Pi 3</h2>
                <h4>₹ ${productDetails['Raspberry Pi']}</h4>
                Everyone knows and loves Raspberry Pi, but what if you don’t need any additional peripherals to make it wireless. 
                The Raspberry Pi 3 provides you with the same Pi as before but now with double the RAM and a much faster processor.
                The credit-card sized computer is capable of doing many things that your desktop PC does, like spreadsheets, word-processing and playing high-definition video and games.
                <br><br>
                The secret sauce that makes the Pi so powerful is the Broadcom BCM2837, an ARM Cortex-A53 64 Bit Quad Core Processor System-on-Chip. 
                The biggest change in the Raspberry Pi 3 is an upgrade to a next generation processor and improved connectivity with BLE and BCM43143 Wi-Fi. 
                The four built-in USB ports provides connectivity for a mouse, keyboard, or anything else that the Pi needs.
                <br><br>
                <br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Processor </td>
                            <td> Broadcom BCM2837 64 Bit ARM Cortex-A53 Quad Core Processor SoC running @ 1.2GHz </td>
                        </tr>
                        <tr>
                            <td> Power </td>
                            <td> 5V @ 2.4A via microUSB Power Source </td>
                        </tr>
                        <tr>
                            <td> RAM </td>
                            <td> 1 GB </td>
                        </tr>
                        <tr>
                            <td> Ports </td>
                            <td> 4 x USB 2.0 Ports with up to 1.2A Output </td>
                        </tr>
                        <tr>
                            <td> GPIO </td>
                            <td> Expanded 40 Pin GPIO Header </td>
                        </tr>
                        <tr>
                            <td> Operating System </td>
                            <td> Ubuntu, PINET, Windows 10 IOT, Raspbian, Pidora, OSMC, OpenElec, RISC, Linux </td>
                        </tr>
                        <tr>
                            <td> Wireless Type </td>
                            <td> 802.11 B/G </td>
                        </tr>
                        <tr>
                            <td> Video & Audio </td>
                            <td> Video/Audio Out via 4 Pole 3.5mm connector, HDMI, CSI Camera or Raw Raspberry Pi (DSI) </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
</body>
</html>