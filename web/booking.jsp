<%-- 
    Document   : booking
    Created on : 28 Oct, 2016, 2:40:26 PM
    Author     : Nivea Dabre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <table>
            <tr>
                <th>Bus Id</th>
                <th>Source</th>
                <th>Dest</th>
                <th>Operator</th>
                <th>Fare</th>
            </tr>
            <c:forEach var="bus" items="${requestScope.busList}">
                <tr>
                    <td><c:out value="${bus.busID}"></c:out></td>
                    <td><c:out value="${bus.src}"></c:out></td>
                    <td><c:out value="${bus.dest}"></c:out></td>
                    <td><c:out value="${bus.busoperator}"></c:out></td>
                    <td><c:out value="${bus.fare}"></c:out></td>
                </tr>
            </c:forEach>
        </table>
        
         
        <form action="BookTicket.do" method="post">
        <div class="submit">
            Enter Bus ID:<input type="text" name="busID"/>
	<input type="submit" value="Submit"/>
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
