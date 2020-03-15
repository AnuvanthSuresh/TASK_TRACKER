<%@page import="java.util.ArrayList"%>
<%@page import="com.TaskTrackerDeploy.model.AllTaskModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Task</title>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: #3b5998;
}
.container {
	padding: 16px;
	background-color: white;
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
  background-color: #3b5998; 
  color: white;
  padding: 6px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}



/* Full-width input fields */
input[type=text], input[type=password] {
  width: 70%;
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
table {
  border-collapse: collapse;
  width: 100%;
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
    color: #2c3e50;
}

/* A few custom styles for date inputs */
input[type="date"] {
    appearance: none;
    -webkit-appearance: none;
    color: #95a5a6;
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
if(session.getAttribute("uname")==null){
	response.sendRedirect("Index.jsp");
	return;
} %>
<%
AllTaskModel TModel = new AllTaskModel();
ArrayList<AllTaskModel> EditList = new ArrayList<AllTaskModel>();
if(request.getAttribute("Flag")!=null){
	EditList = (ArrayList<AllTaskModel>)request.getAttribute("taskDta");
}
else{
RequestDispatcher rd = request.getRequestDispatcher("/AllTaskServlet");
request.setAttribute("Flag","Edit_Task");
rd.forward(request, response);
}
%>
<div style="color: white;" align="middle">
	<h1>Edit Task</h1>
	</div>
	<br>

<a href="AllTaskServlet"><b>Home</b> </a>
<a href="LogoutServlet"><b>LOGOUT</b></a>
<br>
<br>

<form action="EditTaskServlet" method="get"> 
        <TABLE BORDER="1">
            <TR>
                <TH>ID</TH>
                <TH>Task</TH>
                <TH>Date</TH>
                <TH>Status</TH>
                <TH>Edit</TH>
                
                
                </TR>
<%for(AllTaskModel T : EditList ){%>
<TR>
                <TD> <%= T.getTask_ID() %></td>
                <TD> <%= T.getTask() %></TD>
                <TD> <%= T.getDate() %></TD>
                <TD> <%= T.getStatus() %></TD>
                <TD> <input type="Radio" name="Status" value="<%= T.getTask_ID()%>"></TD>               
            </TR>
            <% } %>
        </TABLE>
        
        <br><br><br>
        <div class="container">
        <input type="text" placeholder="New Task" name="NewTask" autocomplete="off" required="required" placeholder="New Task"><br>
        <input type="date" name="NewDate" required="required"> <br>
        <br><br>
        <div align="right">
        <input type="SUBMIT" value="MAKE CHANGES" class="button">
        <input type="RESET" value="RESET" class="button">
        </div>
</form>
</div>

</body>
</html>