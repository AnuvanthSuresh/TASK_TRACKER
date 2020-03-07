<%@page import="java.util.ArrayList"%>
<%@page import="com.TaskTrackerDeploy.model.AllTaskModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Task</title>
</head>
<body>
<%
if(session.getAttribute("uname")==null){
	response.sendRedirect("Index.jsp");
	return;
}
%>
In Task Display<br><br>
<table text-align="center">
<thead> <a href="AddTask.jsp">Add New Task </a></thead>
<thead><a href="ResetAllServlet">Reset All</a></thead> 
<thead><a href="EditTask.jsp">Edit Task</a></thead>
</table>
<%
AllTaskModel TModel = new AllTaskModel();
ArrayList<AllTaskModel> TList = new ArrayList<AllTaskModel>();

	TList = (ArrayList<AllTaskModel>)request.getAttribute("taskDta");

%>
<a href="LogoutServlet">LOGOUT</a>
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
                <TD> <%= T.getTask_ID() %></td>
                <TD> <%= T.getTask() %></TD>
                <TD> <%= T.getDate() %></TD>
                <TD> <%= T.getStatus() %></TD>
                <TD> <input type="checkbox" name="Status" value="<%= T.getTask_ID()%>"></TD>               
            </TR>
            <% } %>
        </TABLE>
        
        <input type="SUBMIT" value="UPDATE">
        <input type="RESET" value="RESET">
</form>

</body>
</html>