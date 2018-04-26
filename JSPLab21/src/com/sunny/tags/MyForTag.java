package com.sunny.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MyForTag extends TagSupport{

	private int var;
	private int i;
	public void setVar(int var) {
		this.var = var;
	}


	public int doStartTag() throws JspException {

		i=0;
		if(i<var){
		return EVAL_BODY_INCLUDE;
		}
		else {
			return SKIP_BODY;
		}
		}
	


	public int doAfterBody() throws JspException {

		i++;
		System.out.println("MyForTag doAfterBody() mtd "+i);
		if(i<var){
		return EVAL_BODY_AGAIN;
		}
		else {
			return SKIP_BODY;
		}
		}
	


	public int doEndTag() throws JspException {

		System.out.println("MyForTag doEndTag() mtd");
		i=1;
		return EVAL_PAGE;
	}
}
