<%-- 
    Document   : book
    Created on : 29 Oct, 2016, 11:04:40 AM
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
         <form action="payment.jsp" method="post">
        <div class="submit">
            
	<input type="submit" value="Proceed to payment"/>
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
