package com.sunny.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunny.actions.ForgotPWAction;
import com.sunny.actions.LoginAction;
import com.sunny.actions.RegisterAction;
import com.sunny.actions.SunnyBaseAction;

@WebServlet(name="myServlet",urlPatterns={"/*.sunny"})
public class SunnyControllerServlet extends HttpServlet {
	    public SunnyControllerServlet() {
	    	System.out.println(" SunnyControllerServlet() DC");
    }


	    LoginAction loginAction=null;
	    RegisterAction regAction=null;
	    ForgotPWAction fpwAction=null;
	    SunnyBaseAction action=null;
	
	    public void init(ServletConfig config) throws ServletException {
	    loginAction=new LoginAction();
	    regAction=new RegisterAction();
	    fpwAction=new ForgotPWAction();
	    //to create only one time so keep in init mtd 
	    }


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("SunnyControllerServlet is processing the Request");
		String URI=request.getRequestURI();	//to get which request is comming 
		System.out.println("Requesting the URI :"+URI);
		if(URI.endsWith("register.sunny")){
			action=regAction;
		}
		else if(URI.endsWith("login.sunny")){
			action=loginAction;
		}
		else if(URI.endsWith("forgotpw.sunny")){
			action=fpwAction;
		}
		String result="";
		try {
			result=action.process(request, response);	//returns String
		} catch (Exception e) {
			e.printStackTrace();
			}
	
		System.out.println("Resultant Resource :"+result);
		RequestDispatcher rd=request.getRequestDispatcher(result);
		rd.forward(request, response);
		System.out.println("SunnyControllerServlet Procesing Ends");
	}

}
