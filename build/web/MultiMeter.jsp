<%-- 
    Document   : MultiMeter
    Created on : 8 Apr, 2017, 11:15:39 PM
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
        <title>Multi Meter - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4 col-sm-8 mx-auto">
                <div class="col-12 d-sm-block d-md-none">
                    <h2>Multi Meter</h2>
                    <h4>₹ ${productDetails['Multi Meter']}</h4>
                </div>
                <img src="Products/MultiMeter.jpg">
                <div class="row">
                    <div class="col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Multi Meter">
                            <input type="hidden" name="linkName" value="MultiMeter">
                            <input type="hidden" name="price" value="${productDetails['Multi Meter']}">
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
                            <input type="hidden" name="productName" value="Multi Meter">
                            <input type="hidden" name="linkName" value="MultiMeter">
                            <input type="hidden" name="price" value="${productDetails['Multi Meter']}">
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
                    <h2>Multi Meter</h2>
                    <h4>₹ ${productDetails['Multi Meter']}</h4>
                </div>
                The Digital Multimeter (DMM) is an essential tool in every electronic enthusiasts arsenal. 
                The Digital Multimeter, however, is not your average multimeter, it features a loud continuity sound, current/voltage sense, and quality probes.
                You can use the multimeter to measure DC and AC voltage, DC current, resistance, continuity, and test diodes.
                <br><br>
                This auto-ranging multimeter will test AC and DC voltage and current as well as capacitance, resistance, frequency and even temperature.
                It features a large, easily readable display for use in the field as well as the ability to connect to your computer for data logging, processing and analysis.
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Voltage Range (AC/DC) </td>
                            <td> 400mV, 4V, 40V, 400V, 1000V </td>
                        </tr>
                        <tr>
                            <td> Current Range (AC/DC) </td>
                            <td> 30mA, 300mA, 10A </td>
                        </tr>
                        <tr>
                            <td> Input Impedance </td>
                            <td> 10MΩ </td>
                        </tr>
                        <tr>
                            <td> Resistance Range </td>
                            <td> 400Ω, 4kΩ, 40kΩ, 400kΩ, 4MΩ, 40MΩ ±(0.8% + 4) </td>
                        </tr>
                        <tr>
                            <td> Capacitance Range </td>
                            <td> 4nF, 40nF, 400nF, 4uF, 40uF, 200uF ±(3.5% + 8) </td>
                        </tr>
                        <tr>
                            <td> Frequency Range </td>
                            <td> 100Hz, 1000Hz, 10kHz, 100kHz, 1MHz, 30MHz ±(0.5% + 10) </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>