<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RISA</title>
<link rel="stylesheet" type="text/css" href="css/active_CEO.css">
</head>
<body>
<header>
	<div class="container">
    <img src="images/White.png" alt="pic" class="pic" >
    <nav>
    	<ul>
    		<li><a href="admin_View.jsp">View</a></li>
    		<li><a href="admin_Update.jsp">Update</a></li>
    		<li><a href="admin_Add.jsp">Add Student</a></li>
    		<li><a href="admin_Delete_Student.jsp">Delete Student Account</a></li>
    		<li><a href="admin_Delete_CEOandHRandEmployer.jsp">Delete CEO, HR, or Employer Account</a></li>
    	</ul>
    </nav>
	</div>		
	
</header>


<div class="optionsDiv">
        Sort 
        <select id="selectField">
            <option value="Alphabetical" selected>Alphabetical</option>
            <option value="else">else</option>
        </select>   
</div>

<jsp:include page="CEO_View"/>

</body>
</html>