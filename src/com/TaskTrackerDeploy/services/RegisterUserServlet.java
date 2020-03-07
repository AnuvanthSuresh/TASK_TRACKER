package com.TaskTrackerDeploy.services;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TaskTrackerDeploy.DAO.AllTaskDAO;

/**
 * Servlet implementation class RegisterUserServlet
 */
@WebServlet("/RegisterUserServlet")
public class RegisterUserServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String newUsername = request.getParameter("newusername");
		String newPassword = request.getParameter("newpassword");
		AllTaskDAO registerUser = new AllTaskDAO();
		registerUser.RegisterUser(newUsername, newPassword);
		response.sendRedirect("Index.jsp");
	}

}
