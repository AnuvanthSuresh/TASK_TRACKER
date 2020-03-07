<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add new Task</title>
</head>
<body>
<%
if(session.getAttribute("uname")==null)
{
	response.sendRedirect("Index.jsp");
}
%>
<h1>ADD NEW TASK</h1>
<br>
<br><br><br><br><br>
<a href="LogoutServlet">LOGOUT</a>
<form action="AddTaskServlet" method="get">

Task : <input type="text" name="newTask"> <br>
Date : <input type="date" name="Date" required pattern="\d{4}-\d{2}-\d{2}"/><br>

<input type="submit">
</form>

</body>
</html>