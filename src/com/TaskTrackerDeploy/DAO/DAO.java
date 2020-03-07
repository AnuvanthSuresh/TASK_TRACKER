package com.TaskTrackerDeploy.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {

	/*
	 * DB Connection requirments
	 */
	  private final static String URL = "jdbc:postgresql://localhost:5432/to_do_main";
	  private final static String user = "to_do";
	  private final static String password = "pass123";
	  public static Connection db = null;
	
	
	/*
	 * Get DB connection
	 */
	protected static Connection Intialize_DB() {
	 
		try{
			Connection db=DriverManager.getConnection(URL, user, password);
		    System.out.println("Connection sucess DAO");
			return db;
			
		}catch (Exception e) {
			System.out.println("Connection Failed");
		   return null;
		}
		
	}
	
	/*
	 * Drop DB connection
	 */
	public void Drop_DB_Connection() {
		try{
			db.close();
		}
		catch (Exception e) {
          
		}
	}
	
}
