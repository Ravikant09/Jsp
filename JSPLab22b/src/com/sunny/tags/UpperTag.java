package com.sunny.tags;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class UpperTag extends BodyTagSupport{

	public UpperTag() {

		System.out.println("Upper Tag DC");
	}
	static{
		System.out.println("Upper Tag SB");
	}
	


	public int doStartTag() throws JspException {
		System.out.println("Upper Tag doStartTag()");
		return EVAL_BODY_BUFFERED;
	}








	public int doEndTag() throws JspException {

		System.out.println("Upper Tag doEndTag");
		String str=getBodyContent().getString();
		try {
			Writer out=pageContext.getOut();
			out.write(str.toUpperCase());
		} catch (Exception e) {

			e.printStackTrace();
		}
		return EVAL_PAGE;
	}
}




