package com.TaskTrackerDeploy.services;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.TaskTrackerDeploy.DAO.AllTaskDAO;

/**
 * Updates Table based on request
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   public UpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		 String[] Status = request.getParameterValues("Status");
		 List StatusList = (List)Arrays.asList(Status);
	     AllTaskDAO allt = new AllTaskDAO();
	     allt.UpdateStatus(StatusList);
	}
	catch (Exception e) {
		System.out.println("NULL");
	}
		RequestDispatcher rd = request.getRequestDispatcher("AllTaskServlet");
		rd.forward(request, response);
		
	}

}
