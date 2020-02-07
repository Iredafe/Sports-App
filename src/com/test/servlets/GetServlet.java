package com.test.servlets;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;


public class GetServlet extends HttpServlet {

		protected void doGet(HttpServletRequest req, 
				HttpServletResponse resp) throws 
		ServletException ,IOException {

			ServletContext context = getServletContext();
			System.out.println(context.getInitParameter("dbURL"));
			String value = req.getParameter("name");
			String htmlResponse = "<html><h3> Welcome To Servlets </h3></html>";		
		
			PrintWriter writer = resp.getWriter();

			writer.write(htmlResponse + " " +value);




}}
