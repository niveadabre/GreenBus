<%-- 
    Document   : popup
    Created on : 28 Oct, 2016, 9:27:43 AM
    Author     : Nivea Dabre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" integrity="sha384-AysaV+vQoT3kOAXZkl02PThvDr8HYKPZhNT5h/CXfBThSRXQ6jW5DO2ekP5ViFdi" crossorigin="anonymous">
</head>
<body>
     <br><br>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary "  data-toggle="modal" data-target="#myModal">
  View Ticket
</button>
  <script>
            function myFunction() {
                window.print();
            }
         </script>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Ticket</h4>
      </div>
      <div class="modal-body">
          <c:forEach var="reservation" items="${requestScope.reservationList}">
              <h4>First Name : <c:out value="${reservation.fname}"></c:out></h4><br>
              <h4>Last Name : <c:out value="${reservation.lname}"></c:out></h4><br>
              <h4>Source : <c:out value="${reservation.source}"></c:out></h4><br>
              <h4>Destination : <c:out value="${reservation.dest}"></c:out></h4><br>
              <h4>Date of Journey : <c:out value="${reservation.startdate}"></c:out></h4> <br>
              <h4>Date of return : <c:out value="${reservation.enddate}"></c:out></h4> 
          </c:forEach>
          
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
       <button type="button" class="btn btn-primary " onclick="myFunction()" >
  Print Ticket
</button>


        
      </div>
    </div>
  </div>
</div>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" integrity="sha384-3ceskX3iaEnIogmQchP8opvBy3Mi7Ce34nWjpBIwVTHfGYWQS9jwHDVRnpKKHJg7" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.3.7/js/tether.min.js" integrity="sha384-XTs3FgkjiBgo8qjEjBk0tGmf3wPrWtA6coPfQDfFEY8AnYJwjalXCiosYRBIBZX8" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/js/bootstrap.min.js" integrity="sha384-BLiI7JTZm+JWlgKa0M0kGRpJbF2J8q+qreVrKBC47e3K6BW78kGLrCkeRX6I9RoK" crossorigin="anonymous"></script>

</body>

</html>