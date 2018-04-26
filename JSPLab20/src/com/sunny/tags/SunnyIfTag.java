package com.sunny.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class SunnyIfTag extends TagSupport{

	private String test;

	public void setTest(String test) {
		this.test = test;
	}
	public SunnyIfTag() {

		System.out.println("SunnyIfTag Default Constructor");
	}
	static{
		System.out.println("SunnyIfTag Static Block");

	}
	


	public int doEndTag() throws JspException {

		System.out.println("SunnyIfTag doEndTag() ");
		return EVAL_PAGE;
	}
	
	

	public int doAfterBody() throws JspException {

		System.out.println("SunnyIfTag doAfterBody()");
		return super.doAfterBody();
	}
	


	public int doStartTag() throws JspException {

		boolean b1=Boolean.parseBoolean(test);	//since test is of String type
		System.out.println("b1 :"+b1);
		if(b1){
			return EVAL_BODY_INCLUDE;
		}
		else {
			return SKIP_BODY;
			
		}
	}
}
