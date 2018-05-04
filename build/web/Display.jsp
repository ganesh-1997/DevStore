<%-- 
    Document   : Display
    Created on : 8 Apr, 2017, 8:58:32 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Header.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Shop.css">
        <title>Display - Dev Store</title>
    </head>
    <body>
        <div class="row firstRow">
            <div class="col-12">
                <div class="card card-body mx-auto">Display (3)</div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="card card-body mx-auto">
                    <a href="LCD.jsp">
                        <img src="Products/LCD.jpg">
                        <div class="caption"> LCD </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="card card-body mx-auto">
                    <a href="OLED.jsp">
                        <img src="Products/OLED.jpg">
                        <div class="caption"> OLED </div>
                    </a>
                </div>
            </div>
            <div class="col-md-4 col-sm-6">
                <div class="card card-body mx-auto">
                    <a href="RaspberryPiLCD.jsp">
                        <img src="Products/RaspberryPiLCD.jpg">
                        <div class="caption"> RPi LCD </div>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
