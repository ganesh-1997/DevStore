<%-- 
    Document   : Header
    Created on : 2 Apr, 17, 6:14:43 PM
    Author     : Ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="Header.css">
    </head>
    <body>
        <div class="modal fade" id="SignIn" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content animate">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Sign In</h4>
                    </div>
                    <div class="modal-body">
                        <form name = "SignIn" action="SignIn" method="post" onsubmit="return validateSignIn()">
                            <div class="form-group">
                                <input id="email" type="text" name="email" placeholder="E - Mail" required="required" maxlength="35"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'E - Mail'"
                                       oninvalid="this.setCustomValidity('Enter E - Mail')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="password" type="password" name="password" placeholder="Password" required="required" maxlength="20"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"
                                       oninvalid="this.setCustomValidity('Enter Password')" oninput="setCustomValidity('')"> 
                            </div>
                            <input type="submit" value="Sign In">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="SignUp" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content animate">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Sign Up</h4>
                    </div>
                    <div class="modal-body">
                        <form name = "SignUp" action = "SignUp" method="post" onsubmit="return validateSignUp()">
                            <div class="form-group">
                                <input id="name" type="text" name="name" placeholder="Name" required="required" maxlength="30"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Name'" 
                                       oninvalid="this.setCustomValidity('Enter Name')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="mail" type="text" name="mail" placeholder="E - Mail" required="required" maxlength="35"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'E - Mail'"
                                       oninvalid="this.setCustomValidity('Enter E - Mail')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="number" type="text" name="number" placeholder="Mobile Number" required="required" maxlength="10"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Mobile Number'"
                                       oninvalid="this.setCustomValidity('Enter Mobile Number')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="pwd" type="password" name="pwd" placeholder="Password"  required="required" maxlength="20"
                                       onfocus="this.placeholder = ''" onblur="this.placeholder = 'Password'"
                                       oninvalid="this.setCustomValidity('Enter Password')" oninput="setCustomValidity('')">
                            </div>
                            <input type="submit" value="Sign Up">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-fixed-top">
            <div class="container-fluid">
                <a class="dropdown-toggle navbar-toggle" data-toggle="dropdown" href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                    <c:choose>
                        <c:when test="${sessionScope.email == null}">
                        <a class="navbar-toggle pull-right" data-toggle="modal" data-target="#SignIn"><i class="fa fa-sign-in" aria-hidden="true"></i> Sign In</a>
                    </c:when>
                    <c:otherwise>
                        <a class="navbar-toggle pull-right" href="Profile.jsp"><i class="fa fa-user" aria-hidden="true"></i></a>
                        <a class="navbar-toggle pull-right" href="Wishlist"><i class="fa fa-bookmark-o" aria-hidden="true"></i></a>
                        <a class="navbar-toggle pull-right" href="Cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                        </c:otherwise>
                    </c:choose>
                <ul class="dropdown-menu">
                    <li><a href="Orders">Orders</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.email == null}">
                            <li><a data-toggle="modal" data-target="#SignUp">Sign Up</a></li>
                            </c:when>
                            <c:otherwise>
                            <li><a href="SignOut.jsp">Sign Out</a></li>
                            </c:otherwise>
                        </c:choose>
                    <li class="divider"></li>
                    <li><a href="Arduino.jsp">Arduino</a></li>
                    <li><a href="RaspberryPi.jsp">Raspberry Pi</a></li>
                    <li class="divider"></li>
                    <li><a href="Connectors.jsp">Connectors</a></li>
                    <li><a href="Display.jsp">Display</a></li>
                    <li><a href="Tools.jsp">Tools</a></li> 
                    <li class="divider"></li>
                    <li><a href="Actuators.jsp">Actuators</a></li>
                    <li><a href="Sensors.jsp">Sensors</a></li>
                    <li class="divider"></li>
                    <li><a href="GPS.jsp">GPS</a></li>
                    <li><a href="IoT.jsp">IoT</a></li>
                    <li><a href="Wireless.jsp">Wireless</a></li>
                </ul>
                <div class="navbar-collapse" id="navbar">
                    <ul class="nav navbar-nav">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                            <ul class="dropdown-menu">
                                <li><a href="Arduino.jsp">Arduino</a></li>
                                <li><a href="RaspberryPi.jsp">Raspberry Pi</a></li>
                                <li class="divider"></li>
                                <li><a href="Connectors.jsp">Connectors</a></li>
                                <li><a href="Display.jsp">Display</a></li>
                                <li><a href="Tools.jsp">Tools</a></li> 
                                <li class="divider"></li>
                                <li><a href="Actuators.jsp">Actuators</a></li>
                                <li><a href="Sensors.jsp">Sensors</a></li>
                                <li class="divider"></li>
                                <li><a href="GPS.jsp">GPS</a></li>
                                <li><a href="IoT.jsp">IoT</a></li>
                                <li><a href="Wireless.jsp">Wireless</a></li>
                            </ul>
                        </li>
                        <li><a href="Shop.jsp" class="logo">Dev Store</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <c:choose>
                            <c:when test="${sessionScope.email == null}">
                                <li><a data-toggle="modal" data-target="#SignIn">Sign In</a></li>
                                <li><a data-toggle="modal" data-target="#SignUp">Sign Up</a></li>
                                </c:when>
                                <c:otherwise>
                                <li><a href="Cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Cart</a></li>
                                <li><a href="Orders">Orders</a></li>
                                <li class = "dropdown">
                                    <a class="dropdown-toggle" data-toggle="dropdown">${sessionScope.name} <i class="fa fa-caret-down" aria-hidden="true"></i></a>
                                    <ul class = "dropdown-menu">
                                        <li><a href="Profile.jsp">Profile</a></li>
                                        <li><a href="Wishlist">Wishlist</a></li>
                                        <li><a href="SignOut.jsp">Sign Out</a></li>
                                    </ul>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
        </nav>
        <nav class="navbar navbar-fixed-bottom">
            <p class="navbar-text">Dev Store <i class="fa fa-copyright" aria-hidden="true"></i> 2017</p>
        </nav>
    </body>
</html>