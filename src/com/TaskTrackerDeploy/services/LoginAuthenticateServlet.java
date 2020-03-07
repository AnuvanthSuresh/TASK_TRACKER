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
 * Servlet implementation class LoginAuthenticateServlet
 */
@WebServlet("/LoginAuthenticateServlet")
public class LoginAuthenticateServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = (String) request.getParameter("username");
		String pass = (String) request.getParameter("password");
	    AllTaskDAO authentication = new AllTaskDAO();
	    System.out.println("Authentication"+authentication.AuthenticateUser(uname,pass));
	    if(authentication.AuthenticateUser(uname,pass)) {
	    	HttpSession session = request.getSession();
	    	session.setAttribute("uname", uname);
	    	response.sendRedirect("AllTaskServlet");
	    }
	    else {
	    	response.sendRedirect("Index.jsp");
	    }
	
	}

}
