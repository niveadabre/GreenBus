<%-- 
    Document   : print
    Created on : 14 Oct, 2016, 10:17:26 AM
    Author     : Nivea Dabre
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

        <form  action="RetrieveData.do" method="post">
        <div class="print">
            <div class="element-num">
                <label class="title">
                </label>
                <span class="ticket1">
                    Enter First Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input placeholder=" First name" type="text"  name="fname" />
                    <span class="icon-place">
                    </span>
                </span>

            </div>

            <div class="element-num">
                <label class="title">
                </label>
                <span class="ticket1">
                    Enter Last Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input placeholder=" Last name" type="text"  name="lname" />
                    <span class="icon-place">
                    </span>
                </span>
            </div>

           
	<input type="submit" value="print"/>
        </div>
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
