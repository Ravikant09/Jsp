package com.sunny.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunny.jdbc.UserService;

@WebServlet(name="myForgorPWD",urlPatterns={"/forgotpw.sunny"})
public class ForgotPWServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserService userService=new UserService();
		String em=request.getParameter("email");
		String pw=userService.getPasswordByEmail(em);
		String result="";
		if(pw!=null){
			result="pwstatus.jsp";
			request.setAttribute("PASSWORD",pw);
		}
		else {
			String msg="Invalid Email - Enter Registered Email";
			request.setAttribute("MSG", msg);
			result="forgotpw.jsp";
		}
		
		RequestDispatcher rd=request.getRequestDispatcher(result);
		rd.forward(request, response);
		
	}

}
