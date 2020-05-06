<%-- 
    Document   : login
    Created on : 6 Oct, 2016, 8:37:41 PM
    Author     : Nivea Dabre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="header.jsp" %>
       <script type='text/javascript'>
           function validateForm(){
                var v = document.forms["myForm"]["username"].value;
       if (v == null || v == "") {
        alert("Please Enter your Username");
        return false;
    }
	var u = document.forms["myForm"]["password"].value;
    if (u == null || u == "") {
        alert("Please Enter your password");
        return false;
    }
           }
    </script>
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        <div class="container">
        <br>
        <br>
        <br>
        <ol class="breadcrumb">
        <li><a style="color: #398439" href="index.html">Home</a></li>
        <li class="active">Login</li>
      </ol>
        </div>
    
   
        <div class="container">
            <div class="row" style="margin-top:6.5%;">
            <div class="col-sm-6">
                <div class="panel panel-default">
                   
                    <div class="panel-body">
                    <div class="page-header">
                        <h2 style="color: #398439">Login</h2>
                      </div>
                      <form name="myForm" action="index.html" onsubmit="return validateForm()" method="POST">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" name="username" placeholder="Username" class="username form-control" id="username">
			 </div>
			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" name="password" placeholder="Password" class="password form-control" id="password">
			 </div>
                        <div class="form-group" style="margin-bottom: 2%">
			<input type="submit"style="background-color: #3e8f3e" name="submit" value="Submit" class="btn btn-lg btn-primary"> &nbsp; <input type="reset" name="reset" value="Reset" class="btn btn-lg btn-default"> 
                        </div>
                          </form>
                          <div class="form-group" >
                                                         
                         <form name="myForm" action="display.jsp" method="POST">
                        <input type="submit" value="Forgot password" name="Submit" class="btn btn-lg btn-default" >
                        </div>
                        </form>
                        
                        
                              <div class="panel-footer">Don't have Account yet ? <a style="color: #3e8f3e" href="register.jsp"  class="alert-link">Register here >></a></div>
                   
                    </div>
                </div>
            </div>
        </div>
        </div>
               
         <%@include file="footer.jsp" %>
    </body>
</html>
