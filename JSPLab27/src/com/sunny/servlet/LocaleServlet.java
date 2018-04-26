package com.sunny.servlet;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name="localeServlet",urlPatterns={"/changelocale.sunny"} )
public class LocaleServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		
		String lan=request.getParameter("language");
		Locale loc=new Locale(lan);
		response.setLocale(loc);
		
		session.setAttribute("LAN", lan);

		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");

		rd.forward(request, response);
		
		System.out.println(lan);
	}

}
