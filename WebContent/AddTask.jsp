<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add new Task</title>
<style type="text/css">
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

a:link, a:visited {
	background-color: white;
	color: #3b5998;
	padding: 6px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
	background-color: white;
}

th {
	background-color: white;
	color: #3b5998;
	padding: 6px 10px;
	text-align: center;
	text-decoration: none;
}

td {
	background-color: #3b5998;
	color: white;
	padding: 6px 10px;
	text-align: left;
	text-decoration: none;
}

.button {
	background-color: #3b5998;
	color: white;
	padding: 6px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
}

* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #3b5998;
}
/* Removes the clear button from date inputs */
input[type="date"]::-webkit-clear-button {
    display: none;
}

/* Removes the spin button */
input[type="date"]::-webkit-inner-spin-button { 
    display: none;
}

/* Always display the drop down caret */
input[type="date"]::-webkit-calendar-picker-indicator {
    color: #3b5998;
}

/* A few custom styles for date inputs */
input[type="date"] {
    appearance: none;
    -webkit-appearance: none;
    color: #3b5998;
    font-family: "Helvetica", arial, sans-serif;
    font-size: 18px;
    border:1px solid #ecf0f1;
    background:white;
    padding:5px;
    display: inline-block !important;
    visibility: visible !important;
}

input[type="date"], focus {
    color: #3b5998;
    box-shadow: none;
    -webkit-box-shadow: none;
    -moz-box-shadow: none;
}
</style>
</head>

<body>
	<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")==null)
{
	response.sendRedirect("Index.jsp");
}
%>
<div style="color: white;" align="middle">
	<h1>Add New Task</h1>
	</div>
	<br>
	<br>
	<br>
	
	<a href="AllTaskServlet"><b>Home</b> </a>
<a href="LogoutServlet"><b>LOGOUT</b></a>
<br>
	<br>
	<div class="container">
		<form action="AddTaskServlet" method="get">
			<input type="text" name="newTask" autocomplete="off"
				required="required" placeholder="New Task"> <br>
			<div align="left">
			<input type="date" name="Date" required pattern="\d{4}-\d{2}-\d{2}" /><br>
</div><br><br>
<div align="right">
			<input type="submit" class="button" value="SUBMIT">
	</div>
		</form>
	</div>

</body>
</html>