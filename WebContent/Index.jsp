<%@page import="java.util.ArrayList"%>
<%@page import="com.TaskTrackerDeploy.model.AllTaskModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Task Tracker</title>
</head>
<body>

<h1 align="center"><b>Welcome to task tracker</b></h1><br><br><br><br>

<form action="LoginAuthenticateServlet" method="get" >

Login<br>

Username : <input type="text" name="username"><br>
Password : <input type="password" name="password"><br>
<input type="SUBMIT" name="LOGIN">
</form>

</body>
</html>