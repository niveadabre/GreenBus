<%-- 
    Document   : code
    Created on : 26 Oct, 2016, 9:29:23 PM
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
        <h3 style="color: #398439"> One time password successfully verified </h3>
        <form name="hiform" action="CaptchaServlet.do" method="GET">
             <input type="submit" value="Procceed" name="submit" /> 
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
