package com.sunny.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="test" ,urlPatterns="/test.sunny")
public class TestServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		//Collect Input Data
		String fnm=request.getParameter("fname");
		String eml=request.getParameter("email");
		
		//Validate Input Data
		boolean er=false;

		
		if(fnm==null || fnm.trim().length()==0){
			request.setAttribute("fname", "Please Enter Name");
			er=true;
		}
		
		if(eml==null || eml.trim().length()==0 || !eml.endsWith("@gmail.com")){
			request.setAttribute("email", "Please Enter Email");
			er=true;
		}
		
		RequestDispatcher rd=null;
		if(er){
			rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else {
			rd=request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
	}

}
