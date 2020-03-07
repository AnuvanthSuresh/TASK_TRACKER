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
import javax.websocket.Session;

import com.TaskTrackerDeploy.DAO.AllTaskDAO;

/**
 * Servlet implementation class AddTaskServlet
 */
@WebServlet("/AddTaskServlet")
public class AddTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String task =  request.getParameter("newTask");
		HttpSession session = request.getSession();
		String user =(String) session.getAttribute("uname");
		try{
		Date date=(Date) new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("Date"));  
		AllTaskDAO newT = new AllTaskDAO();
		newT.AddTask(task,date,user);
		}
		catch (Exception e) {
		System.out.println("Error during add task");
		e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("AllTaskServlet");
		rd.forward(request, response);
		
		
	}

}
