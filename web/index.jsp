<%-- 
    Document   : form.jsp
    
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Green Bus</title>
<link rel="stylesheet" type="text/css" href="css/eg.css">
 <%@include file="navbar.jsp" %>
</head>

<body>
	<div id="page">
		<header id="header">
			<div id="header-inner">	
				<div id="logo"><br/>
                                    <br/>
					<h1><a href="index.jsp">Green Bus</span></a></h1>
				</div>
				
				<div class="clr">
				</div>
			</div>
		</header>
		<div class="feature">
			<div class="feature-inner">
				<h1> Transportation Route</h1>
			</div>
		</div>
		
	
		<div id="content">
			<div id="content-inner">
				
				<main id="contentbar">
					<div class="article">


							
<form class="reserve" style="background-color:#FFFFFF;font-size:14px;font-family:'Roboto',Arial,Helvetica,sans-serif;color:#34495E;max-width:480px;min-width:150px" action="ReserveTicket.do" method="post">
	<div class="title">
		<h2>Specify the following details </h2>
	</div>
    <div class="element-name">
	<label class="title">
	</label>
	<span class="nameFirst">
		NAME&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input placeholder="First Name" type="text" size="8" name="name[first]" />
		<span class="icon-place">
		</span>
	</span>
	<span class="nameLast">
		<input placeholder="Last name" type="text" size="14" name="name[last]" />
		<span class="icon-place">
		</span>
	</span>
</div>



<div class="element-select">
	<label class="title">
	</label>
	<div class="item-cont">
		<div class="large">
			<span>
				Source&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="select"  >
				<option value="Ahmedabad">Ahmedabad</option>
				<option value="Aurangabad">Aurangabad</option>
				<option value="Agra">Agra</option>
				<option value="Amritsar">Amritsar</option>
				<option value="Ananthapur">Ananthapur</option>
				<option value="Ajmer">Ajmer</option>
				<option value="Amaravati">Amaravati</option>
                                <option value="Mumbai (Andheri)">Mumbai (Andheri)</option>
                                <option value="Banglore">Banglore</option>
                                <option value="Bengaluru">Bengaluru</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Mumbai Borivali">Mumbai Borivali</option>
                                <option value="Bhubaneswar">Bhubaneswar</option>
                                <option value="Belgaum">Belgaum</option>
                                <option value="Bareilly">Bareilly</option>
                                <option value="Baroda">Baroda</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Coimbatore">Coimbatore</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Calcutta">Calcutta</option>
                                <option value="Cochin">Cochin</option>
                                <option value="Calicut">Calicut</option>
                                <option value="Chidambaram">Chidambaram</option>
                                <option value="Chandrapur">Chandrapur</option>
                                <option value="Chittoor (Andhra Pradesh)">Chittoor (Andhra Pradesh)</option>
                                <option value="Chilakaluripet">Chilakaluripet</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Dehradun">Dehradun</option>
                                <option value="Dharamshala">Dharamshala</option>
                                <option value="Mumbai(Dadar)">Mumbai(Dadar)</option>
                                <option value="Dhule">Dhule</option>
                                <option value="Faridabad">Faridabad</option>
                                <option value="Faizpur">Faizpur</option>
                                <option value="Ferozpur">Ferozpur</option>
                                <option value="Faizabad">Faizabad</option>
                                <option value="Faridkot">Faridkot</option>
                                <option value="Ramoji Film City">Ramoji Film City</option>
				<option value="Goa">Goa</option>
                                <option value="Gurgaon">Gurgaon</option>
                                <option value="Guwahati">Guwahati</option>
                                <option value="Gorakhpur">Gorakhpur</option>
                                <option value="Gwalior">Gwalior</option>
				<option value="Hyderabad">Hyderabad</option>
                                <option value="Haridwar">Haridwar</option>
                                <option value="Hospet">Hospet</option>
                                <option value="HIndupur">HIndupur</option>
                                <option value="Indore">Indore</option>
				<option value="Imagica(Mumbai)">Imagica(Mumbai)</option>
                                <option value="Bangalore Intl Airport">Bangalore Intl Airport</option>
                                <option value="Jaipur">Jaipur</option>
                                <option value="Jammu">Jammu</option>
                                <option value="Jodhpur">Jodhpur</option>
				<option value="Jamnagar">Jamnagar</option>
                                <option value="Jalandhar">Jalandhar</option>
                                <option value="Jhansi">Jhansi</option>
                                <option value="Junagadh">Junagadh</option>
                                <option value="Jamshedpur">Jamshedpur</option>
                                 <option value="Kolhapur(Maharashtra)">Kolhapur(Maharashtra)</option>
                                <option value="Kolhapur(Maharashtra)">Kolhapur(Maharashtra)</option>
                                <option value="Kanpur">Kanpur</option>
                                <option value="Kodaikanal">Kodaikanal</option>
                                 <option value="Lucknow">Lucknow</option>
                                <option value="Ludhiana">Ludhiana</option>
                                <option value="Lonavala">Lonavala</option>
                                <option value="Leh(Ladakh)">Leh(Ladakh)</option>
                                 <option value="Madras">Madras</option>
                                <option value="Manali">Manali</option>
                                <option value="Mangalore">Mangalore</option>
                                <option value="Nagpur">Nagpur</option>
                                <option value="Nainital">Nainital</option>
                                <option value="Nashik">Nashik</option>
                                <option value="Noida">Noida</option>
                                <option value="Ooty">Ooty</option>
                                <option value="Pune">Pune</option>
                                <option value="Pondicherry">Pondicherry</option>
                                <option value="Patna">Patna</option>
                                <option value="Panvel">Panvel</option>
                                <option value="Rajkot">Rajkot</option>
                                <option value="Shirdi">Shirdi</option>
                                <option value="Shimla">Shimla</option>
                                <option value="Udaipur">Udaipur</option>
                                <option value="Ujjain">Ujjain</option>
				<option value="Vellore">Vellore</option>
                                <option value="Velankanni">Velankanni</option>
				<option value="Washim">Washim</option>
                                <option value="Wadi">Wadi</option>
                                <option value="Yellapur">Yellapur</option>
                                <option value="Zaheerabad">Zaheerabad</option>
				
				
                               
				
				</select><i></i>
				<span class="icon-place">
				</span>
			</span>
		</div>
	</div>
</div>

<div class="element-select">
	<label class="title">
	</label>
	<div class="item-cont">
		<div class="large">
			<span>
				Destination&nbsp&nbsp<select name="select1" >
					<option value="Ahmedabad">Ahmedabad</option>
				<option value="Aurangabad">Aurangabad</option>
				<option value="Agra">Agra</option>
				<option value="Amritsar">Amritsar</option>
				<option value="Ananthapur">Ananthapur</option>
				<option value="Ajmer">Ajmer</option>
				<option value="Amaravati">Amaravati</option>
                                <option value="Mumbai (Andheri)">Mumbai (Andheri)</option>
                                <option value="Banglore">Banglore</option>
                                <option value="Bengaluru">Bengaluru</option>
                                <option value="Bhopal">Bhopal</option>
                                <option value="Mumbai Borivali">Mumbai Borivali</option>
                                <option value="Bhubaneswar">Bhubaneswar</option>
                                <option value="Belgaum">Belgaum</option>
                                <option value="Bareilly">Bareilly</option>
                                <option value="Baroda">Baroda</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Coimbatore">Coimbatore</option>
                                <option value="Chandigarh">Chandigarh</option>
                                <option value="Calcutta">Calcutta</option>
                                <option value="Cochin">Cochin</option>
                                <option value="Calicut">Calicut</option>
                                <option value="Chidambaram">Chidambaram</option>
                                <option value="Chandrapur">Chandrapur</option>
                                <option value="Chittoor (Andhra Pradesh)">Chittoor (Andhra Pradesh)</option>
                                <option value="Chilakaluripet">Chilakaluripet</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Dehradun">Dehradun</option>
                                <option value="Dharamshala">Dharamshala</option>
                                <option value="Mumbai(Dadar)">Mumbai(Dadar)</option>
                                <option value="Dhule">Dhule</option>
                                <option value="Faridabad">Faridabad</option>
                                <option value="Faizpur">Faizpur</option>
                                <option value="Ferozpur">Ferozpur</option>
                                <option value="Faizabad">Faizabad</option>
                                <option value="Faridkot">Faridkot</option>
                                <option value="Ramoji Film City">Ramoji Film City</option>
				<option value="Goa">Goa</option>
                                <option value="Gurgaon">Gurgaon</option>
                                <option value="Guwahati">Guwahati</option>
                                <option value="Gorakhpur">Gorakhpur</option>
                                <option value="Gwalior">Gwalior</option>
				<option value="Hyderabad">Hyderabad</option>
                                <option value="Haridwar">Haridwar</option>
                                <option value="Hospet">Hospet</option>
                                <option value="HIndupur">HIndupur</option>
                                <option value="Indore">Indore</option>
				<option value="Imagica(Mumbai)">Imagica(Mumbai)</option>
                                <option value="Bangalore Intl Airport">Bangalore Intl Airport</option>
                                <option value="Jaipur">Jaipur</option>
                                <option value="Jammu">Jammu</option>
                                <option value="Jodhpur">Jodhpur</option>
				<option value="Jamnagar">Jamnagar</option>
                                <option value="Jalandhar">Jalandhar</option>
                                <option value="Jhansi">Jhansi</option>
                                <option value="Junagadh">Junagadh</option>
                                <option value="Jamshedpur">Jamshedpur</option>
                                 <option value="Kolhapur(Maharashtra)">Kolhapur(Maharashtra)</option>
                                <option value="Kolhapur(Maharashtra)">Kolhapur(Maharashtra)</option>
                                <option value="Kanpur">Kanpur</option>
                                <option value="Kodaikanal">Kodaikanal</option>
                                 <option value="Lucknow">Lucknow</option>
                                <option value="Ludhiana">Ludhiana</option>
                                <option value="Lonavala">Lonavala</option>
                                <option value="Leh(Ladakh)">Leh(Ladakh)</option>
                                 <option value="Madras">Madras</option>
                                <option value="Manali">Manali</option>
                                <option value="Mangalore">Mangalore</option>
                                <option value="Nagpur">Nagpur</option>
                                <option value="Nainital">Nainital</option>
                                <option value="Nashik">Nashik</option>
                                <option value="Noida">Noida</option>
                                <option value="Ooty">Ooty</option>
                                <option value="Pune">Pune</option>
                                <option value="Pondicherry">Pondicherry</option>
                                <option value="Patna">Patna</option>
                                <option value="Panvel">Panvel</option>
                                <option value="Rajkot">Rajkot</option>
                                <option value="Shirdi">Shirdi</option>
                                <option value="Shimla">Shimla</option>
                                <option value="Udaipur">Udaipur</option>
                                <option value="Ujjain">Ujjain</option>
				<option value="Vellore">Vellore</option>
                                <option value="Velankanni">Velankanni</option>
				<option value="Washim">Washim</option>
                                <option value="Wadi">Wadi</option>
                                <option value="Yellapur">Yellapur</option>
                                <option value="Zaheerabad">Zaheerabad</option>
				</select><i></i>
				<span class="icon-place">
				</span>
			</span>
		</div>
	</div>
</div>

<div class="element-select">
	<label class="title">
	</label>
	<div class="item-cont">
		<div class="large">
			<span>
				Bus type&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="select2" >
					<option value="select1">AC</option>
					<option value="select2">Non-AC</option>
				</select><i></i>
				<span class="icon-place">
				</span>
			</span>
		</div>
	</div>
</div>

<div class="element-date">
	<label class="title">
	</label>
	<div class="item-cont">
            <span>
                Date Of journey
		<input class="large" data-format="yyyy-mm-dd" type="date" name="date" placeholder="Date"/>
		<span class="icon-place">
		</span>
              </span>

	</div>
</div>
    
<div class="element-date">
	<label class="title">
	</label>
	<div class="item-cont">
            <span>
                Date Of Return
		<input class="large" data-format="yyyy-mm-dd" type="date" name="date" placeholder="Date"/>
		<span class="icon-place">
		</span>
              </span>

	</div>
</div>    

<div class="submit">
	<input type="submit" value="Submit"/>
</div>
</form>
							
					
						

					
		 <%@include file="footer.jsp" %>
</body>
</html>

