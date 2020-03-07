<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("uname")==null){
	response.sendRedirect("Index.jsp");
}
%>
<form action="DeleteUserServlet" method="post">

<input type="checkbox" value="Confirm" name="Confirmation"> Deleting User data .... 
<input type="text" name="Feedback" placeholder="Write your feedbacks">

<input type="SUBMIT">
</form>
</body>
</html>