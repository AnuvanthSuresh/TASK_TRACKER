package com.TaskTrackerDeploy.services;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TaskTrackerDeploy.DAO.AllTaskDAO;

/**
 * Servlet implementation class ResetAllServlet
 */
@WebServlet("/ResetAllServlet")
public class ResetAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       HttpSession session = request.getSession();
       String user = (String)session.getAttribute("uname");
		AllTaskDAO delete  = new AllTaskDAO();
       delete.ResetAll(user);
       RequestDispatcher rd = request.getRequestDispatcher("AllTaskServlet");
       rd.forward(request, response);
	}

}
