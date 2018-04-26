<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
<%!
	static int b=20;
	String str="Sunny";
	void m1(){
		int a=10;
		System.out.println(a);
		System.out.println(b);
		System.out.println(str);
	}
	
%>


<h1>This is Show JSP</h1>


<%
	int y=99;
	out.print(y);
	System.out.print(y);
%>

<%="Hello" %>
<%=str %>
</body>
</html>