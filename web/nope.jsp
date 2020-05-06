<%-- 
    Document   : nope
    Created on : 29 Oct, 2016, 10:53:37 AM
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
        <h3 style="color: #398439"> Re enter captcha </h3>
            <form name="hiform" action="CaptchaServlet.do" method="GET">

                <input type="submit" value="Click" name="submit" />
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
