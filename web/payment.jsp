

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PAYMENT PAGE</title>
<style type="text/css">
    .box{
        padding: 20px;
        display: none;
        margin-top: 20px;
        border: 1px solid #000;
    }
    .red{ background: #FDFEFE  ; }
    .green{ background: #FDFEFE  ; }
    .blue{ background: #FDFEFE  ; }
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $('input[type="radio"]').click(function(){
        if($(this).attr("value")=="red"){
            $(".box").not(".red").hide();
            $(".red").show();
        }
        if($(this).attr("value")=="green"){
            $(".box").not(".green").hide();
            $(".green").show();
        }
        if($(this).attr("value")=="blue"){
            $(".box").not(".blue").hide();
            $(".blue").show();
        }
    });
});
</script>
<script>
    <script type="text/javascript">
   
      function validate()
      {
      
         if( document.myForm.Name.value == "" )
         {
            alert( "Please provide your name!" );
            document.myForm.fname.focus() ;
            return false;
         }
         if( document.myForm.age.value == "" )
         {
            alert( "Please provide your age" );
            document.myForm.age.focus() ;
            return false;
         }
         if( document.myForm.contact.value == "" )
         {
            alert( "Please provide your contact!" );
            document.myForm.contact.focus() ;
            return false;
         }
         
        }
    </script>
        
    </head>
    <body>
     <%@include file="navbar.jsp" %>
       
       
       <br/>
       <br/>
        <br/>
       <br/>
    <center>
       <p>
       
       <form name="myForm" action="print.jsp" onclick="return validate()" method="POST">
        <h1>Personal Details</h1>
        <p>Gender : <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
  
   <p>First name:
                    <input type="text" name="fname" placeholder="First name"required=""></p>
<p >  Last name:
                <input type="text" name="lname" placeholder="Last name" required=""></p>
  <p >Age:
      <input type="number" name="age" placeholder="Age in Digits"required=""></p>
 
  
  
            
 <p> Contact no.:
     <input type="text" name="contact"   placeholder="Contact No." ></p>
 
         <p>Email:
       <input type="email" pattern="[^ @]*@[^ @]*" placeholder="Enter your email" required=""></p>
  
                        
                         </p></center>
        
    <div>
        <label><input type="radio" name="colorRadio" value="red">CREDIT CARD</label>
        <label><input type="radio" name="colorRadio" value="green">DEBIT CARD</label>
        <label><input type="radio" name="colorRadio" value="blue"> NET BANKING</label>
    </div>
    <div class="red box"><p>CREDIT CARD NO :
        <input type="number" name="credit" min="1" max="10" required=""><br></p>
 <p>NAME ON THE CARD:
 <input type="text" name="text1" required="" ><br></p>
<p> CVV:
 <input type="number" name="cvv" min="1" max="10" required=""><br></p>
 <p>MONTH:<select required="">
    <option value="J">JAN</option>
    <option value="F">FEB</option>
    <option value="M">MAR</option>
     <option value="A">APRIL</option>
    <option value="M">MAY</option>
     <option value="J">JUNE</option>
         <option value="di">JULY</option>
      <option value="adi">AUGUST</option>
       <option value="udi">SEPTEMBER</option>
        <option value="aud">OCTOBER</option> <option value="audi">NOVEMBER</option>
         <option value="ai">DECEMBER</option>
        
        
</select></p>
 <script>
         
         </script>
 <br>
 YEAR:<select>
  <option value="3">2016</option>
  <option value="3">2017</option>
  <option value="2">2018</option>
  <option value="1">2019</option>
</select></div>
    <div class="green box">DEBIT CARD NO :
        <input type="number" name="contact" min="1" max="10" required=""><br>
 NAME ON THE CARD:
 <input type="text" name="ncard" min="1" max="10" required=""><br>
 CVV:
 <input type="number" name="cvvt" min="1" max="10" required=""><br>
            MONTH: <select required="">
                <option value="J">JAN</option>
                 <option value="F">FEB</option>
                <option value="M">MAR</option>
                <option value="A">APRIL</option>
                 <option value="M">MAY</option>
                <option value="J">JUNE</option>
                 <option value="di">JULY</option>
                <option value="adi">AUGUST</option>
                <option value="udi">SEPTEMBER</option>
                <option value="aud">OCTOBER</option> <option value="audi">NOVEMBER</option>
                <option value="ai">DECEMBER</option>
        
        
</select><br>
YEAR:<select required="">
                <option value="3">2016</option>
                <option value="3">2017</option>
                <option value="2">2018</option>
                <option value="1">2019</option>
</select></div>
    <div class="blue box">NET BANKING
        SELECT BANK:<select required="">
                <option value="3A">AXIS BANK</option>
                <option value="3V">HDFC BANK</option>
                <option value="2B">HSBC BANK</option>
                <option value="1C">VELL BANK</option>
             
</select><br>
       ENTER ACCOUNT NO.:   <input type="text" name="fname" placeholder="Enter valid account no."required=""> 
 

 
    </div>
    <%-- </form>
       <form name="myForm" action="print.jsp" onclick="return validate()" method="POST"> --%>
    
    
          <input style="background-color: #090" type="submit" name="submit" value="Submit" /> 
    
        
       </form>

<li>&nbsp;</li>  
    


         <%@include file="footer.jsp" %>
    </body>
</html>
