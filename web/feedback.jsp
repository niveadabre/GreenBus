<%-- 
    Document   : contact
    Created on : 14 Oct, 2016, 10:29:10 AM
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
        <div class="item-cont">
		<div class="large">
			<span>
				Select query&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="select" >
					<option value="Uncomfortablilty">Uncomfortable seats</option>
					<option value="Bad driving">Bad driving</option>
					<option value="Hygiene">Bad hygiene</option>
					
					
				</select><i></i>
				<span class="icon-place">
				</span>
			</span>
		</div>
	</div>
</div>
<div class="element-num">
	<label class="title">
	</label>
	<span class="ticket1">
		Enter First Name&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input placeholder=" First name" type="text" size="14" name="fname" />
		<span class="icon-place">
		</span>
	</span>

</div>
 <div class="element-num">
	<label class="title">
	</label>
	<span class="ticket1">
		Enter ticket no&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input placeholder="Enter number" type="text" size="14" name="avtm" />
		<span class="icon-place">
		</span>
	</span>

</div>
 <div class="element-num">
	<label class="title">
	</label>
	<span class="ticket1">
		Enter Bus no&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input placeholder="Enter number" type="text" size="14" name="avtm" />
		<span class="icon-place">
		</span>
	</span>

</div>

<div class="description">
	Description<input type="textarea"/>
</div>
<form name="myForm" action="welcome.jsp" method="POST">
<div class="submit">
	<input type="submit" value="Submit"/>
</div>
</form>


    </body>
</html>
