<%-- 
    Document   : display
    Created on : 6 Oct, 2016, 5:43:43 PM
    Author     : janice
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
         <%@include file="navbar.jsp" %>
       
       
       <br/>
       <br/>
        <br/>
       <br/>
    <form name="hiform" action="SendEmailServlet.do" method="GET">
        
        <%--
       
        <%
        String fname=request.getParameter("FirstName");
        String lname=request.getParameter("LastName");
        String mail=request.getParameter("Email");
        %>
        <h3> Welcome <%= fname %> <%= lname %> </h3> </br> --%>
        <p>Email address:<input type="text" name="EmailId" value=" " size="20" /></br></p>
        <h3 style="color: #398439"> Verify the One time password to continue </h3>
         <p>
             <input type="submit" value="Generate OTP" name="submit" /> 
         </p>
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

        
       
        
    
        
    

