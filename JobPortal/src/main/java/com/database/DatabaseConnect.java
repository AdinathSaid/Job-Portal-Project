package com.database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnect {
	private static Connection conn;
	public static Connection getconn() {
		if(conn==null) {
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportaldb","root","root");
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		System.out.println("method called");
		return conn;
	}
	
	
}
