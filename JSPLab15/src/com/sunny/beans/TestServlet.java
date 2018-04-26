package com.sunny.beans;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class TestServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession sess=request.getSession();
		ServletContext ctx=sess.getServletContext();
		//String,Wrapper and Date 
		request.setAttribute("EM", "sunny@gmail.ccom");	
		sess.setAttribute("PH",new Long(8373736363l));
		ctx.setAttribute("DOB", new Date());
	
		//Collection of String,Wrapper and Date
		ArrayList<Integer> al=new ArrayList<Integer>();
		al.add(new Integer(111));
		al.add(new Integer(222));
		al.add(new Integer(333));
		al.add(new Integer(444));
		al.add(new Integer(555));
		request.setAttribute("AL", al);
		
		String str[]={"Raju","Ravi","Manish","Kshiti","Pooja"};
		sess.setAttribute("STR",str);
		
		
		//Collections of Collections(using JSTL)
		ArrayList<ArrayList> al1=new ArrayList<ArrayList>();
		al1.add(al);
		al1.add(al);
		al1.add(al);
		request.setAttribute("AL1",al1);	
	
	
		//Custom or User Defined class Object
		Address add=new Address("BTM Layout 16th Main 10th Cross ","Bangalore");
		Account acc=new Account(786,"SavingAccount",78980,add);
		Customer cust=new Customer(105,"Mohan Paul","sunny@gmail.com",8787667877l,acc);
		sess.setAttribute("CUST",cust);
		
		//Collections of User Defined Class Object
		
		ArrayList<Customer> cs=new ArrayList<Customer>();
		cs.add(cust);
		cs.add(cust);
		cs.add(cust);
		cs.add(cust);
		cs.add(cust);
		sess.setAttribute("CS", cs);
		
		
		//Map Object
		
		HashMap< String, String> hm=new HashMap<String,String>();
		hm.put("sid", "123");
		hm.put("sname", "Pooja");
		hm.put("email", "pooja@gmail.com");
		sess.setAttribute("HM", hm);
		
		//Collection of Map Object(using JSTL)
		ArrayList<HashMap<String, String>> al2=new ArrayList<HashMap<String, String>>();
		al2.add(hm);
		al2.add(hm);
		al2.add(hm);
		request.setAttribute("AL2",al2);
		
		RequestDispatcher rd=request.getRequestDispatcher("show.jsp");
		rd.forward(request, response);
		
		
	}

}
