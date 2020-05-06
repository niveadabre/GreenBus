<%-- 
    Document   : index
    Created on : 6 Oct, 2016, 12:32:37 PM
    Author     : Nivea Dabre
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="header.jsp" %>
       <script type='text/javascript'>
	function validateForm(){
	var x=document.forms["myForm"]["fname"].value;
					if(x==null||x=="")
					{
					alert("First Name must be filled out");
					return false;
                                        }
        var p=document.forms["myForm"]["lname"].value;
					if(p==null||p=="")
					{
					alert("Last Name must be filled out");
					return false;
					}
	                                
	var y=document.forms["myForm"]["email"].value;
					if(y==null||y=="")
					{
					alert("Email must be filled out");
					return false;
					}
	
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
        <br><br><br>
      <ol class="breadcrumb">
        <li><a style="color: #398439" href="index.html">Home</a></li>
        <li class="active">Register</li>
      </ol>
        </div>
        <div class="container">
            <div class="row" style="margin-top:6.5%;">
                
                <div class="container">
                        <div class="row">
				
					<div class="tab-content">
					  <div id="home" class="tab-pane fade in active">
							<div class="col-md-offset-1 col-md-11">
								<div class="panel panel-default" style="margin:10px">
									<div class="panel-body">
										
										
										<form name="myForm" role="form" action="RegisterServlet.do" onsubmit="return validateForm()" method="post" >
											<div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Fname">First Name:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="fname" placeholder="First Name" class="Sname form-control" id="Fname">
                                                                                            </div>
                                                                                        </div>
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Lname">Last Name:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                            <input type="text" name="lname" placeholder="Last Name" class="Sname form-control" id="Lname">
                                                                                            </div>
                                                                                        </div>
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="Gender">Gender:</lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                                <select name="gender" class="form-control">
                                                                                            <option>Male</option>
                                                                                            <option>Female</option>
                                                                                             </select>
                                                                                            </div>
                                                                                        </div>
                                                                                    
                                                                                         <div class="form-group">
                                                                                            <div class="col-md-3">
                                                                                                <lable for="emailid">Email id: </lable>
                                                                                            </div>
                                                                                            <div class="col-md-9">
                                                                                                <input  name="email" type="email" placeholder="Email id" class="Semailid form-control" id="emailid" required="required">
                                                                                            </div>
                                                                                        </div>
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-3">
                                                                                            <label for="username">Username:</label></div>
                                                                                        <div class="col-md-9">
                                                                                            <input type="text" name="username" placeholder="Username" class="username form-control" id="username">
                                                                                        </div></div>
                                                                                    <div class="form-group">
                                                                                        <div class="col-md-3">
                                                                                            <label for="password">Password:</label></div>
                                                                                        <div class="col-md-9">
                                                                                            <input type="password" name="password" placeholder="Password" class="password form-control" id="password">
                                                                                        </div></div>
                                                                                    <div class="form-group" style="margin-bottom: 2%">
                                                                                        <input style="background-color: #398439" type="submit" name="submit" value="Register" class="btn btn-lg btn-primary"> &nbsp; <input type="reset" name="reset" value="Reset" class="btn btn-lg btn-default">       
                                                                                    </div>
                                                                                </form> 
										
                                                                               
										
									</div>
								</div>
							</div>
					  </div>
					 
					</div>
					
				</div>
			</div>
		</div>

                
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
