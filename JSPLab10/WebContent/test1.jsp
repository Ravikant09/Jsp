<%@ page import="com.sunny.Student" %>
<html>

<body>
<h1>
<%
	Student st=new Student();
	st.setSid(110);
	st.setName("Sunny");
	st.setPhone(8759167520l);
	session.setAttribute("STUD", st);
%>
</h1>

<%
	Student sid=(Student)session.getAttribute("STUD");

%>
	Sid:<%=st.getSid() %> <br />
	Name:<%=st.getName() %> <br />
	Phone:<%=st.getPhone() %> <br />
</body>
</html>