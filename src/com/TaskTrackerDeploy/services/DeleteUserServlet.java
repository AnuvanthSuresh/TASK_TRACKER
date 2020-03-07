package com.TaskTrackerDeploy.services;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TaskTrackerDeploy.DAO.AllTaskDAO;

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/DeleteUserServlet")
public class DeleteUserServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AllTaskDAO Deleteuser = new AllTaskDAO();
		HttpSession session = request.getSession();
		if(request.getAttribute("Confirmation").toString().equalsIgnoreCase("Confirm")) {
			if(request.getAttribute("Feedback")!=null) {
			
				Deleteuser.DeleteUser(session.getAttribute("uname").toString(), request.getAttribute("Feedback").toString());
			   response.sendRedirect("Index.jsp");
			}
		}
		else {
			response.sendRedirect("Index.jsp");
		}
	}

}
