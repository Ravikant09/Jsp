package com.sunny.actions;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sunny.jdbc.UserService;

public abstract class SunnyBaseAction {
	
	static UserService userService=null;
	static {
		userService=new UserService();//instead of creating in every ServletAction class we can create object here
	}
	public abstract String process(HttpServletRequest request,HttpServletResponse response) throws Exception;
	//here process is abstract so that we must have to override that method 
}

/* For suppose different developer develop several ServletAction class with different 
 * signature say LoginAction servlet has service method and has HttpServletRequest as
 * parameter,RegisterAction servlet has process method and has HttpServletRequest and
 * HttpServletResponse as parameter,ForgetPWAction servlet has process method and has HttpServletRequest and
 * HttpServletResponse as parameter so different ServletAction has different signature 
 * so it is difficult for container to call action class with different signature so to 
 * overcome this we write one super class as BaseAction and write common signature than 
 * all other ServletAction class extends that BaseAction class  
 * 
 */
 