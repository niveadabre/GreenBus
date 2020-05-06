<%-- 
    Document   : newpass
    Created on : 29 Oct, 2016, 10:06:59 AM
    Author     : janice
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        
    </head>
    <body>
         <%@include file="navbar.jsp" %>
       
       
       <br/>
       <br/>
        <br/>
       <br/>
        <form name="myForm" action="login.jsp" method="POST">
        <p>New Password:<input style="color: #398439" type="password" name="New Password"  size="20" /></br></p>
        <p>Reconfirm Password:<input style="color: #398439" type="password" name="Re-enter Password"  size="20" /></br></p>
  
        <p><input style="background-color: #398439" type="submit" value="Login with New Password" name="Submit" />   </p>
        </form>
        
        <br/>
       <br/>
        <br/>
       <br/>
       <br/>
       <br/>
        <br/>
       <br/>  
         <%@include file="footer.jsp" %>
        </body>
</html>
