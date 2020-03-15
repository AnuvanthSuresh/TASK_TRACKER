<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
Alert message
<%
 Thread.sleep(3000);
%>
User creation failed
<%
response.sendRedirect("Index.jsp");
%>
</body>
</html>