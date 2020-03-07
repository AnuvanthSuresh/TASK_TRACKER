<%@page import="java.util.ArrayList"%>
<%@page import="com.TaskTrackerDeploy.model.AllTaskModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Task</title>
</head>
<body>
<% 
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
<a href="LogoutServlet">LOGOUT</a>
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
        Enter New Task         :<input type="text" placeholder="New Task" name="NewTask"><br>
        Enter Completion Date  :<input type="date" name="NewDate"> <br>
        <input type="SUBMIT" value="MAKE CHANGES">
        <input type="RESET" value="RESET">
</form>

</body>
</html>