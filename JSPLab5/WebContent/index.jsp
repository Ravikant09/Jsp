<%@page import="java.io.IOException" %>
<%@page extends="javax.servlet.http.HttpServlet" %>
<html>

<body>
<h1>
<%!

public void service(HttpServletRequest req,HttpServletResponse res)throws IOException,ServletException{
	System.out.println("Http Service Method Called");
	_jspService(req, res);
}
%>



This is JSP Page <br /></h1>
</body>
</html>


<!--If extends some Superclass Say here HttpServlet than have to override any mtd from 
Servlet  -->