package com.sunny.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sunny.jdbc.UserService;

@WebServlet(name="myLogin",urlPatterns={"/login.sunny"})
public class LoginServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		UserService userService=new UserService();
		System.out.println("LoginServlet-service() mtd");
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		int x=userService.verifyUser(un, pw);
		
		HttpSession session=request.getSession();
		String result="";
		if(x==1){
			session.setAttribute("UN", un);
			result="home.jsp";
		}
		else {
			String msg="Invalid Username or Password";
			request.setAttribute("MSG", msg);
			result="index.jsp";
		}
		
		RequestDispatcher rd=request.getRequestDispatcher(result);
		rd.forward(request, response);
	}

}
