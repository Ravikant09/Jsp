package com.sunny.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginAction extends SunnyBaseAction{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	//	UserService userService=new UserService(); since we create in SunnyBaseAction class so no need to create again
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
		
	
	return result;
	}

}
