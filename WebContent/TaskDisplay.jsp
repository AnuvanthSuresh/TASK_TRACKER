<%@page import="java.util.ArrayList"%>
<%@page import="com.TaskTrackerDeploy.model.AllTaskModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Task</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
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

th{
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
  background-color: white; 
  color: #3b5998;
  padding: 6px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

.TableHead{
    text-align: center;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #3b5998;
}
</style>


</head>
<body>
	<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
if(session.getAttribute("uname")==null){
	response.sendRedirect("Index.jsp");
	return;
}
%>
	<div style="color: white;" align="middle">
		<h1>
			<b>Scheduled Tasks</b>
		</h2>
		<br>
		<br>
	

				<a href="AddTask.jsp" class="TableHead"><b> Add New Task</b> </a>

				<a href="ResetAllServlet" class="TableHead"><b>Reset All</b></a>

				<a href="EditTask.jsp" class="TableHead"><b>Edit Task</b></a>
	</div>
	
	<%
AllTaskModel TModel = new AllTaskModel();
ArrayList<AllTaskModel> TList = new ArrayList<AllTaskModel>();

	TList = (ArrayList<AllTaskModel>)request.getAttribute("taskDta");

%>
<div style="color: white;" align="right">
	<a href="LogoutServlet"><b> LOGOUT </b></a>
	</div>
	<br>
	<form action="UpdateServlet" method="get">
		<TABLE BORDER="1">
			<TR>
				<TH>ID</TH>
				<TH>Task</TH>
				<TH>Date</TH>
				<TH>Status</TH>
				<TH>Complete</TH>


			</TR>
			<%for(AllTaskModel T : TList ){%>
			<TR>
				<TD><%= T.getTask_ID() %></td>
				<TD><%= T.getTask() %></TD>
				<TD><%= T.getDate() %></TD>
				<TD><%= T.getStatus() %></TD>
				<TD><input type="checkbox" name="Status"
					value="<%= T.getTask_ID()%>"></TD>
			</TR>
			<% } %>
		</TABLE>
		<br>
		<br>
<div align="right">
		<input type="SUBMIT" value="UPDATE" class="button" >
		 <input type="RESET" value="RESET" class="button">
</div>
	</form>

</body>
</html>