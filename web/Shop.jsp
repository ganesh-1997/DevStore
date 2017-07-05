<%-- 
    Document   : Shop
    Created on : 4 Apr, 2017, 8:51:53 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file = "Header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="Shop.css">
        <title>Shop - Dev Store</title>
    </head>
    <body>
        <div class="row rowc">
            <div class="col-sm-12">
                <div id="carousel" class="carousel slide" data-ride="carousel" data-interval="10000">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel" data-slide-to="1"></li>
                        <li data-target="#carousel" data-slide-to="2"></li>
                        <li data-target="#carousel" data-slide-to="3"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="Products/RPi.jpg">
                            <div class="carousel-caption top"><h4 class="noselect">DIY with the Pi!</h4></div>
                            <div class="carousel-caption"><a href="RaspberryPi.jsp" class="btn btn-info" role="button">Get Started</a></div>
                        </div>
                        <div class="item">
                            <img src="Products/IoT.jpg">
                            <div class="carousel-caption"><a href="IoT.jsp" class="btn btn-info" role="button">Get Started</a></div>
                        </div>
                        <div class="item">
                            <img src="Products/Tools.jpg">
                            <div class="carousel-caption top"><h4 class="noselect">Pick your Tools</h4></div>
                            <div class="carousel-caption"><a href="Tools.jsp" class="btn btn-info" role="button">Shop Now</a></div>
                        </div>
                        <div class="item">
                            <img src="Products/Sensor.jpg">
                            <div class="carousel-caption top"><h4 class="noselect">High Quality, Precise Sensors</h4></div>
                            <div class="carousel-caption"><a href="Tools.jsp" class="btn btn-info" role="button">Shop Now</a></div>
                        </div>
                    </div>
                    <a class="carousel-control left" href="#carousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                    <a class="carousel-control right" href="#carousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="Actuators.jsp">
                        <img src="Products/Servo.jpg">
                        <div class="caption"> Actuators </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="Arduino.jsp">
                        <img src="Products/ArduinoUNO.jpg">
                        <div class="caption"> Arduino </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="Connectors.jsp">
                        <img src="Products/GPIORibbonCable.jpg">
                        <div class="caption"> Connectors </div>
                    </a>
                </div>
            </div>
        </div>
        <div class ="row">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="Display.jsp">
                        <img src = "Products/LCD.jpg">
                        <div class="caption"> Display </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="GPS.jsp">
                        <img src="Products/GP735.jpg">
                        <div class="caption"> GPS </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="IoT.jsp">
                        <img src="Products/ESP8266.jpg">
                        <div class="caption"> IoT </div>
                    </a>
                </div>
            </div>
        </div>
        <div class ="row">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="IntelEdison.jsp">
                        <img src="Products/IntelEdison.jpg">
                        <div class="caption"> Intel® Edison </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="RaspberryPi.jsp">
                        <img src="Products/RaspberryPi.jpg">
                        <div class="caption"> Raspberry Pi </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="Sensors.jsp">
                        <img src="Products/FingerPrintSensor.jpg">
                        <div class="caption"> Sensors </div>
                    </a>
                </div>
            </div>
        </div>
        <div class ="row">
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="Tools.jsp">
                        <img src="Products/MultiMeter.jpg">
                        <div class="caption"> Tools </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-4">
                <div class="thumbnail">
                    <a href="Wireless.jsp">
                        <img src="Products/XBee.jpg">
                        <div class="caption"> Wireless </div>
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>