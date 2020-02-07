package com.test.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.dao.DBConnection;

public class HomeServlet extends HttpServlet{
	
	public Connection connection = null;
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		System.out.println("in doGet method");
		
		
		req.getRequestDispatcher("html/index.html").forward(req, resp);}

	
	
	@Override
	public void init() throws ServletException {
	
		System.out.println("in init method");
		
		//initialization activity - set up the DB connection object 
	
		connection = DBConnection.getConnectionToDatabase();
		
	}
	
	@Override
	public void destroy() {
	
		System.out.println("in destroy method");
		
	//cleanup activity - close DB connection object
	
try {
	connection.close();
	
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	
	
}
