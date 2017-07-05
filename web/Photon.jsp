<%-- 
    Document   : Photon
    Created on : 10 May, 2017, 7:51:04 PM
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
        <title>Photon - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src = "Products/Photon.jpg">
                <div class="row"><div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Photon">
                            <input type="hidden" name="linkName" value="Photon">
                            <input type="hidden" name="price" value="${productDetails['Photon']}">
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
                            <input type="hidden" name="productName" value="Photon">
                            <input type="hidden" name="linkName" value="Photon">
                            <input type="hidden" name="price" value="${productDetails['Photon']}">
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
                <h2>Photon 3</h2>
                <h4>₹ ${productDetails['Photon']}</h4>
                Particle’s IoT hardware development board, the Photon, provides everything you need to build a connected project. 
                Particle has combined a powerful 120MHz ARM Cortex M3 microcontroller with a Broadcom Wi-Fi chip in a tiny thumbnail-sized module called the PØ (P-Zero).
                <br><br>
                These specific Photons come with headers, making prototyping easy as each board can plug directly into standard breadboards and perf boards.
                The Photon is not only powerful, but easy to use. The small form factor is ideal for IoT projects with cloud-connectivity. 
                Particle has added a 3.3V DC SMPS power supply, RF and user interface components to the PØ all on a small single-sided PCB.
                <br><br>    
                Your Photon comes with access to the Particle Cloud, a free cloud service. 
                The Particle Cloud has features for building connected projects, including over-the-air firmware updates, REST API, and firmware development.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Wi-Fi </td>
                            <td> 802.11b/g/n </td>
                        </tr>
                        <tr>
                            <td> Peripherals </td>
                            <td> 18 mixed signal GPIO </td>
                        </tr>
                        <tr>
                            <td> OS </td>
                            <td> FreeRTOS </td>
                        </tr>
                        <tr>
                            <td> Setup </td>
                            <td> Soft AP </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>