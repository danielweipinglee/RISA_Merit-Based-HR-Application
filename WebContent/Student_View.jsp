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
    		<li><a href="Student_View.jsp">View</a></li>
    		<li><a href="Student_Update.jsp">Update</a></li>
    		
    	</ul>
    </nav>
	</div>		
	
</header>
<h1></h1><b>Student information:</b></h1>

<jsp:include page="Student_View"/>

</body>
</html>
