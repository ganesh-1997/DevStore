<%-- 
    Document   : Header
    Created on : 2 Apr, 17, 6:14:43 PM
    Author     : Ganesh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Bootstrap CDN-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        <!--Google Fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat|Josefin+Sans|Ubuntu" rel="stylesheet">
        <!--FA Icons-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
        <!--External Imports-->
        <link rel="stylesheet" type="text/css" href="Header.css">
        <script type="text/javascript" src="Validate.js"></script>
    </head>
    <body>
        <!--Sign In Modal-->
        <div class="modal fade" id="SignIn" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content animate">
                    <div class="modal-header">
                        <h4 class="modal-title mr-auto mx-auto my-auto">Sign In</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form name="SignIn" action="SignIn" method="post" onsubmit="return validateSignIn()">
                            <div class="form-group">
                                <input id="email" type="text" name="email" placeholder="E - Mail" required="required" maxlength="35"
                                       onfocus="this.placeholder=''" onblur="this.placeholder='E - Mail'"
                                       oninvalid="this.setCustomValidity('Enter E - Mail')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="password" type="password" name="password" placeholder="Password" required="required" maxlength="20"
                                       onfocus="this.placeholder=''" onblur="this.placeholder='Password'"
                                       oninvalid="this.setCustomValidity('Enter Password')" oninput="setCustomValidity('')"> 
                            </div>
                            <input type="submit" value="Sign In">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Sign Up Modal-->
        <div class="modal fade" id="SignUp" role="dialog">
            <div class="modal-dialog">
                <div class="modal-content animate">
                    <div class="modal-header">
                        <h4 class="modal-title mr-auto mx-auto my-auto">Sign Up</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form name="SignUp" action="SignUp" method="post" onsubmit="return validateSignUp()">
                            <div class="form-group">
                                <input id="name" type="text" name="name" placeholder="Name" required="required" maxlength="30"
                                       onfocus="this.placeholder=''" onblur="this.placeholder='Name'" 
                                       oninvalid="this.setCustomValidity('Enter Name')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="mail" type="text" name="mail" placeholder="E - Mail" required="required" maxlength="35"
                                       onfocus="this.placeholder=''" onblur="this.placeholder='E - Mail'"
                                       oninvalid="this.setCustomValidity('Enter E - Mail')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="number" type="text" name="number" placeholder="Mobile Number" required="required" maxlength="10"
                                       onfocus="this.placeholder=''" onblur="this.placeholder='Mobile Number'"
                                       oninvalid="this.setCustomValidity('Enter Mobile Number')" oninput="setCustomValidity('')">
                            </div>
                            <div class="form-group">
                                <input id="pwd" type="password" name="pwd" placeholder="Password"  required="required" maxlength="20"
                                       onfocus="this.placeholder=''" onblur="this.placeholder='Password'"
                                       oninvalid="this.setCustomValidity('Enter Password')" oninput="setCustomValidity('')">
                            </div>
                            <input type="submit" value="Sign Up">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--Navigation Bar-->
        <nav class="navbar navbar-expand-md">
            <!--Collapse Button-->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar"><i class="fas fa-bars"></i></button>
            <!--Logo-->
            <a class="navbar-brand ml-auto mr-auto" href="Shop.jsp">Dev Store</a>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <!--Navigation Items (Left)-->
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item dropdown my-auto">
                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> Products </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="Arduino.jsp">Arduino</a>
                            <a class="dropdown-item" href="RaspberryPi.jsp">Raspberry Pi</a>
                            <a class="dropdown-item" href="Connectors.jsp">Connectors</a>
                            <a class="dropdown-item" href="Display.jsp">Display</a>
                            <a class="dropdown-item" href="Tools.jsp">Tools</a>
                            <a class="dropdown-item" href="Actuators.jsp">Actuators</a>
                            <a class="dropdown-item" href="Sensors.jsp">Sensors</a>
                            <a class="dropdown-item" href="GPS.jsp">GPS</a>
                            <a class="dropdown-item" href="IoT.jsp">IoT</a>
                            <a class="dropdown-item" href="Wireless.jsp">Wireless</a>
                        </div>
                    </li>
                </ul>
                <!--Navigation Items (Right)-->
                <ul class="navbar-nav h-100">
                    <c:choose>
                        <c:when test="${sessionScope.email == null}">
                            <li class="nav-item my-auto"><a class="nav-link" data-toggle="modal" data-target="#SignIn">Sign In</a></li>
                            <li class="nav-item my-auto"><a class="nav-link" data-toggle="modal" data-target="#SignUp">Sign Up</a></li>
                            </c:when>
                            <c:otherwise>
                            <li class="nav-item"><a class="nav-link" href="Cart"><i class="fas fa-shopping-cart fa-sm"></i> Cart</a></li>
                            <li class="nav-item"><a class="nav-link" href="Orders">Orders</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"> ${sessionScope.name} </a>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="Profile.jsp">Profile</a>
                                    <a class="dropdown-item" href="Wishlist">Wishlist</a>
                                    <a class="dropdown-item" href="SignOut">Sign Out</a>
                                </div>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        </nav>
        <!--Footer-->
        <nav class="navbar navbar-expand-sm fixed-bottom">
            <p class="navbar-text">Dev Store <i class="fa fa-copyright" aria-hidden="true"></i> 2017</p>
        </nav>
    </body>
</html>