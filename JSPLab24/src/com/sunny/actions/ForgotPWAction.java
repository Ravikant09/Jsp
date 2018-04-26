package com.sunny.actions;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunny.jdbc.UserService;

public class ForgotPWAction extends SunnyBaseAction{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
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
		
		return result;
	}

}
