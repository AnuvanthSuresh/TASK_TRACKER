package com.TaskTrackerDeploy.services;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.TaskTrackerDeploy.DAO.AllTaskDAO;
import com.TaskTrackerDeploy.model.AllTaskModel;

/**
 * Gets all the tasks from DB
 */
@WebServlet("/AllTaskServlet")
public class AllTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AllTaskServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      HttpSession session = (HttpSession) request.getSession();
	  String user =(String) session.getAttribute("uname");
      AllTaskDAO TaskData = new AllTaskDAO();
	  ArrayList<AllTaskModel> taskDta = TaskData.Tasklist(user);
	  String FlagCheck = "default";
	  try {
	  FlagCheck = (String) request.getAttribute("Flag");
	  if(FlagCheck!=null) {
		  System.out.println("Flag is Edit Task");
	  }
	  else
	  {
		  FlagCheck = "default";
	  }
	  }
	  catch (Exception e) {
		System.out.println("First Login No value in Flag");
		
	}
	  finally {
		System.out.println(FlagCheck);
	  if(FlagCheck.equalsIgnoreCase("Edit_Task"))
	  {
		  System.out.println("Edit task");
		  request.setAttribute("taskDta", taskDta);
		 RequestDispatcher rd = request.getRequestDispatcher("EditTask.jsp");
		 rd.forward(request, response);    
	  }
	  else {
		  System.out.println("Task Display");
	  request.setAttribute("taskDta", taskDta);
	  RequestDispatcher rd = request.getRequestDispatcher("TaskDisplay.jsp");
	  rd.forward(request, response);
	  }
	}
  }

}
