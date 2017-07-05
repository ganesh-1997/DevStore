<%-- 
    Document   : ConductivityKit
    Created on : 10 May, 2017, 5:19:33 PM
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
        <title>Conductivity Kit - Dev Store</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-4">
                <img src="Products/ConductivityKit.jpg">
                <div class="row">
                    <div class = "col-md-6">
                        <form action="CartAdd" method="post">
                            <input type="hidden" name="productName" value="Conductivity Kit">
                            <input type="hidden" name="linkName" value="ConductivityKit">
                            <input type="hidden" name="price" value="${productDetails['Conductivity Kit']}">
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
                            <input type="hidden" name="productName" value="Conductivity Kit">
                            <input type="hidden" name="linkName" value="ConductivityKit">
                            <input type="hidden" name="price" value="${productDetails['Conductivity Kit']}">
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
                <h2>Conductivity Kit</h2>
                <h4>₹ ${productDetails['Conductivity Kit']}</h4>
                The Atlas Scientific Conductivity Kit comes with everything you need to get your lab-grade embedded conductivity system up and running! 
                The included epoxy/platinum conductivity probe is accurate enough for lab work, but rugged enough for long-term field use.
                Simply connect the probe to the conductivity circuit using the included BNC connector breakout, 
                do some quick calibration with the included calibration solutions and you’re ready to measure conductivity, total derived solids (referenced to KCl) and salinity! 
                <br><br>
                This kit includes the K1.0 conductivity probe and the EZO™ Conductivity Circuit,
                which is accurate from 0.55 µs/cm to 500,000+ µs/cm and is best deployed in brackish water.
                <br><br>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td> Conductivity </td>
                            <td> .55 µs/cm to 500,000+ µs/cm </td>
                        </tr>
                        <tr>
                            <td> Maximum Pressure </td>
                            <td> 1379 kPa (200 psi) </td>
                        </tr>
                        <tr>
                            <td> Measuring Surface </td>
                            <td> Platinum </td>
                        </tr>
                        <tr>
                            <td> TDS Reference </td>
                            <td> KCl </td>
                        </tr>
                        <tr>
                            <td> Connectivity </td>
                            <td> RS-232 </td>
                        </tr>
                        <tr>
                            <td> Temperature </td>
                            <td> 0-70°C </td>
                        </tr>
                        <tr>
                            <td> Operating Voltage </td>
                            <td> 3.3 to 5V </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>