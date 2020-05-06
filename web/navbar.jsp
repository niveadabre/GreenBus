<%-- 
    Document   : navbar
    Created on : 24 Oct, 2016, 6:53:40 PM
    Author     : Nivea Dabre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <%@include file="header.jsp" %>
    </head>
    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-fixed-top topnav"  role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a style="color: #398439" class="navbar-brand topnav" href="index.html"><span style="font-weight: bolder">Green Bus</span></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a style="color: #398439" href="aboutu.html">About Us</a>
                    </li>
                    <li>
                        <a style="color: #398439" href="login.jsp">Login</a>
                    </li>
                   
            
                    <li>
                        <a style="color: #398439" href="contactus.html">Contact Us</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    </body>
</html>