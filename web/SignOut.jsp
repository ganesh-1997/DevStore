<%-- 
    Document   : SignOut
    Created on : 10 Apr, 2017, 4:34:22 PM
    Author     : Ganesh
--%>

<%
    session.setAttribute("email", null);    
    session.invalidate();
    response.sendRedirect("Shop.jsp");
%>