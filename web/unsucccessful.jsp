<%-- 
    Document   : unsucccessful
    Created on : 26 Oct, 2016, 9:31:33 PM
    Author     : janice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="navbar.jsp" %>
       
       
       <br/>
       <br/>
        <br/>
       <br/>
        <h3 style="color: #398439"> One time password not verified </h3> </br>
        <h3 style="color: #398439"> Kindly generate new OTP </h3>
        <form name="myForm" action="display.jsp" method="POST">
            <input type="submit" value="Return" name="Submit" />
            
            
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
