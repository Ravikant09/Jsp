package com.sunny.tags;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;

public class UpperTag extends BodyTagSupport{

	BodyContent bc;
	public UpperTag() {

		System.out.println("Upper Tag DC");
	}
	static{
		System.out.println("Upper Tag SB");
	}
	


	public int doStartTag() throws JspException {
		System.out.println("Upper Tag doStartTag()");
		return EVAL_BODY_BUFFERED;
//return SKIP_BODY;	if we skip than directly go to doEndTag() so bc will be null so NullPE
		
	}


	public void setBodyContent(BodyContent bc) {
		System.out.println("Upper Tag BodyContent()");
		this.bc=bc;
	}
	@Override
	public void doInitBody() throws JspException {

		System.out.println("Upper Tag doInitBody()");
		super.doInitBody();
	}
	@Override
	public int doAfterBody() throws JspException {

		System.out.println("Upper Tag doAfterTag()");
		return SKIP_BODY;					
	//If We Write EVAL_BODY_AGAIN than Starts Iterating and end until we stop the server
	}



	public int doEndTag() throws JspException {

		System.out.println("Upper Tag doEndTag");

		String str=bc.getString();
//		System.out.println(str);
		try {
			Writer out=pageContext.getOut();
			out.write(str.toUpperCase());
		} catch (Exception e) {

			e.printStackTrace();
		}


		return EVAL_PAGE;
	}
}
