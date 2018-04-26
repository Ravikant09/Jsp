package com.sunny.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TestServlet extends HttpServlet {

	ServletConfig cfg=null;

	public void init(ServletConfig cfg) throws ServletException {
		this.cfg=cfg;
		System.out.println("init() method of TestServlet");
		
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		HttpSession sess=request.getSession();
		//Collect Parameter 
		String sn=request.getParameter("sname");
		String em=request.getParameter("email");
		String ems[]=request.getParameterValues("email");
		System.out.println(sn);
		System.out.println(em);		//getParameter will take 1st email value
		for (String str:ems) {
			System.out.println(str);
		}
		
		//Collect Header
		String ho=request.getHeader("host");
		String re=request.getHeader("referer");
		String al=request.getHeader("accept-language");	//default language is en-US:-English
		String ae=request.getHeader("accept-encoding");
		System.out.println("host is "+ho);
		System.out.println("referer is "+re);
		System.out.println("languages are "+al);
		System.out.println("encoded is "+ae);
		
		//Collect Cookies
		Cookie ck1=new Cookie("email", "sunny@gmail.com");
		Cookie ck2=new Cookie("phone", "8272763636");
		response.addCookie(ck1);
		response.addCookie(ck2);
		Cookie ck[]=request.getCookies();
		for(Cookie c:ck){
			System.out.println(c.getName()+"\t\t"+c.getValue());

		}

		RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
		rd.forward(request, response);
		
		//Context Parameter
		ServletContext sc=cfg.getServletContext();
		String st=sc.getInitParameter("state");
		String cty=sc.getInitParameter("city");
		
		System.out.println("ServletContext State "+st);
		System.out.println("ServletContext City "+cty);

		System.out.println("Session ID "+sess.getId());
		System.out.println("Last Accessed Time "+sess.getLastAccessedTime());
		System.out.println("Creation Time "+sess.getCreationTime());
		System.out.println("RemoteAddr "+request.getRemoteAddr());
		System.out.println("Request URI "+request.getRequestURI());
		System.out.println("Content Length "+request.getContentLength());
		System.out.println("Content Type "+request.getContentType());
	

	}

}
