package com.TaskTrackerDeploy.services;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TaskTrackerDeploy.DAO.AllTaskDAO;

/**
 * Servlet implementation class EditTaskServlet
 */
@WebServlet("/EditTaskServlet")
public class EditTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String user =(String) session.getAttribute("uname");
		String newTask = (String)request.getParameter("NewTask");
		String editTaskId = (String)request.getParameter("Status"); 
		try{
			Date newDate=(Date) new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("NewDate"));  
			AllTaskDAO editTask = new AllTaskDAO();
			editTask.EditTask(newTask, newDate, editTaskId, user);
			}
			catch (Exception e) {
			System.out.println("Error during add task");
			e.printStackTrace();
			}
		RequestDispatcher rd= request.getRequestDispatcher("AllTaskServlet");
		rd.forward(request, response);
	}

}
