<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="DatabaseDao.DBConnection" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome To RISA</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<body background="images/background.png">
<div class="container-main">

<form class="login-form" method="get" action="LoginValidation">
  <div class="imgcontainer">
    <img src="images/Black.png" alt="pic" class="pic">
  </div>
  <div class="container">
  	<div>${success}</div><br>
  	<div>${successPassword}</div><br>
    <label for="uname"><b>Email</b></label>
    <input type="text" placeholder="Enter email" name="username" id="username" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter password" name="password" id="password" required>
	
    <button type="submit" >Login</button> 
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>
  <div class="container">
  	<center><span class="message">Not Registered? <a href="#">Register</a></span><br/><br/>
  	<span class="forgetID">HR or CEO? <a href="RegisterHRCEO.jsp">Register Here</a></span><br/><br/>
  	<span class="forgetID">Employer? <a href="RegisterEmployer.jsp">Register Here</a></span><br/><br/>
  	<span class="forgetID">Forgot <a href="forgotpassword1.jsp">Password?</a></span></center>
  </div>
  </form> 
  
  <form class="register-form" method="post" action="LoginValidation">
  <div class="imgcontainer">
    <img src="images/Black.png" alt="pic" class="pic">
  </div>
  <div class="container">

		
    <label for="psw"><b>Risa Unique Code</b></label>
    <input type="text" placeholder="Unique code" name="risacode" id="risacode" required>
    
  	<label for="uname"><b>First Name</b></label>
    <input type="text" placeholder="Enter first name" name="fname" id="fname" required>
    
    <label for="uname"><b>Last Name</b></label>
    <input type="text" placeholder="Enter last name" name="lname" id="lname" required>
    
    <label for="uname"><b>Email</b></label>
    <input type="text" placeholder="Enter email address" name="email" id="email" required>

    <label for="psw"><b>Password </b></label>
    <h5>Password should have at least one upper and lowercase character. Password should also contain a number and be at least 10 characters long.</h5>
    <input type="password" placeholder="Enter password" name="password" id="password" required>
  	
  	<label for="psw"><b>Re-enter Password</b></label>
    <input type="password" placeholder="Re-enter password" name="password2" id="password2" required>
    
    <label for="position"><b>Risa Position</b></label>
    <input type="text" placeholder="Enter Risa position" name="risaposition" id="risaposition" required>
    
    <label for="phonenumber" ><b>Phone Number</b></label>
    <input type="tel" pattern="(?:\(\d{3}\)|\d{3})[- ]?\d{3}[- ]?\d{4}" 
    maxlength="12" placeholder="Example: 000-000-0000" name="phonenumber" id="phonenumber" title="000-000-0000" required>
    
     <br>
    <label for="major"><b>Major</b></label><br><br>
    <select id="major" name="major"  onchange="CheckOther(this);" required>
    	<option value="" selected disabled hidden>Default</option>
  		<option value="Management Information Systems">Management Information Systems</option>
  		<option value="Computer Science">Computer Science</option>
  		<option value="Accounting">Accounting</option>
  		<option value="Advertising">Advertising</option>
  		<option value="Math">Math</option>
  		<option value="Biology">Biology</option>
  		<option value="other">Other</option>
  	</select>
  	<br><br>
  	
  	<div id="ifYes" style="display: none;">
    <label for="majorother"><b>Please enter major</b></label> <input type="text" id="majorother" name="majorother"/><br /></div>
    
    <label for="interest"><b>Field of Interest</b></label>
    <input type="text" placeholder="Enter field of interest" name="interest" id="interest" required>
    
    <label for="college"><b>College</b></label>
    <input type="text" placeholder="Enter college name" name="college" id="college" required>
    <br>
    <label for="degree"><b>Degree Level</b></label><br><br>
    <select id="degree" name="degree" required>
    	<option value="" selected disabled hidden>Default</option>
  		<option value="1">Bachelor</option>
  		<option value="2">Master</option>
  		<option value="3">Doctoral</option>
  	</select>
  	<br><br>
  	<label for="concentration"><b>Concentration</b></label>
    <input type="text" placeholder="Enter concentration" name="concentration" id="concentration" required>
    
    <label for="gradyear"><b>Graduate Year</b></label>
    <input type="number" min="2018" max="2099" step="1" placeholder="Example: 2020" name="gradyear" id="gradyear" required><br>
    
    <label for="gradmonth"><b>Graduate Month</b></label><br>
    <select name="gradmonth" id="gradmonth" required>
    <option value="" selected disabled hidden>Default</option>
    <option value="01">01</option>
    <option value="02">02</option>
    <option value="03">03</option>
    <option value="04">04</option>
    <option value="05">05</option>
    <option value="06">06</option>
    <option value="07">07</option>
    <option value="08">08</option>
    <option value="09">09</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    </select><br><br>
    
    <label for="psw"><b>Security question</b></label>
    
    </b><br>
	<%
    try{//for the dropdown menu
    	Connection conn = DBConnection.getconnectionToDatabase();
        Statement statement = conn.createStatement() ;
        ResultSet resultset =statement.executeQuery("select SecurityQuestion from securityquestion;") ;
	%>
	<br>
    <select name="securityquestion">
    <%  while(resultset.next()){ %>
            <option><%= resultset.getString("securityquestion")%></option>
    <% } %>
    </select>
	<br>
	<%
       }catch(Exception e){
          out.println(e);
       }
	%>
	<br>
	<label for="psw"><b>Security question answer</b></label>
  	<input type="text" placeholder="Security question answer" name="answer" id="answer" required>
  	
  	<button type="submit" >Register</button>
  	
  	<div class="container">
  	</br></br><center><span class="message">Already Registered? <a href="#">Login</a></span></center>
  	</div>
  
  </div>
  </form>
 
  </div>
  
  <script src="https://code.jquery.com/jquery-3.2.1.min.js">
  </script>
  <script>
  
  function CheckOther(that) {
      if (that.value == "other") {
          document.getElementById("ifYes").style.display = "block";
      } else {
          document.getElementById("ifYes").style.display = "none";
      }
  }
  
  $('.message a').click(function(){	
	  $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
  }); 

  </script>

</body>
