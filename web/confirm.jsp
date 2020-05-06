<%-- 
    Document   : confirm
    Created on : 27 Oct, 2016, 8:52:03 PM
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
        <form name="myForm" action="CheckCaptcha.do" method="POST">
        <h3 style="color: #398439"> Enter the text below </h3>
        <%
  String message = (String) request.getAttribute("Value");
  out.println(message);%>
  
  <% 
      session.setAttribute("webt", message);%>
  
  
  
  
        
        
  <p><input type="text" name="Enter" value="" size="20" /></br></p>
  
  
  
  
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
