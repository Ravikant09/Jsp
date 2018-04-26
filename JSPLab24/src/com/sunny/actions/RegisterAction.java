package com.sunny.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sunny.to.UserTO;

public class RegisterAction extends SunnyBaseAction{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
	//	UserService userService=new UserService();	since we create in SunnyBaseAction class so no need to create again
		System.out.println("RegsiterServlet-service() mtd");
		String fn=request.getParameter("fname");
		String em=request.getParameter("email");
		String ph=request.getParameter("phone");
		String un=request.getParameter("username");
		String pw=request.getParameter("password");
		//All Parameter from register.jsp come as String type even Phone also
		int uid=userService.getNextUserId();
		long ph1=Long.parseLong(ph);	//Now convert String of Phone to Long type
		UserTO uto=new UserTO(uid,fn,em,ph1,un,pw);
		int x=userService.registerUser(uto);
		HttpSession session=request.getSession();
		String result="";
		if(x==1){
			session.setAttribute("UN",un);
			result="home.jsp";
		}else {
			String msg="Registration Failed --Please Try Again";
			request.setAttribute("MSG", msg);
			result="register.jsp";
		}
		
		return result;
	}

}
