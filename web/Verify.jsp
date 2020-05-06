<%-- 
    Document   : Verify
    Created on : 7 Oct, 2016, 10:09:15 AM
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
    <form name="hiform" action="verificationServlet.do" method="GET">
        <p> <h3 style="color: #398439"> Enter received OTP </h3>  <input type="text" name="Verify" value="" size="20" /></p>
    <input type="submit" value="Verify" name="submit" />
    
    
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
