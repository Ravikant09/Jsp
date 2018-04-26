package com.sunny.ctag;

import java.io.Writer;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class ShowMessageTag extends TagSupport{
	
	private String sname;
	private String email;
	private String phone;
	public void setSname(String sname) {
		this.sname = sname;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public ShowMessageTag() {

		System.out.println("ShowMessageTag Default Constructor");
		
	}
	
	
	static{
		
		System.out.println("ShowMessageTag Static Block");
		
	}
	
	public int doStartTag() throws JspException {
		System.out.println("ShowMessageTag doStartTag() method" );
		return super.doStartTag();		//super class doStartTag default value
	}
	

	public int doAfterBody() throws JspException {

		System.out.println("ShowMessageTag doAfter() method" );
		
		return SKIP_BODY;
	}


	public int doEndTag() throws JspException {

		System.out.println("ShowMessageTag doEndTag() method");
		Writer w=pageContext.getOut();
		try {
			if(sname==null || sname.trim().isEmpty()){
				w.write(" <font color='red'>You Have Not Specified Your Name </font> ");
			}
			else {
				w.write("Hi!!!! <font color='blue'>" + sname +"</font>");
			}
				if(email==null || email.trim().isEmpty()){
					w.write(" <font color='red'>You Have Not Specified Your Email </font> ");
				}
				else {
					w.write(" <font color='blue'>" + email +"</font>");
				}
					if(phone==null || phone.trim().isEmpty()){
						w.write(" <font color='red'>You Have Not Specified Your Phone </font> ");
					}
					else {
						w.write(" <font color='blue'>" + phone +"</font>");
					}

					
					
				
				

			
			
		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return EVAL_PAGE;
		
	}
}
