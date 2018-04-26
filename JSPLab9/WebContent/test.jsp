
<html>

<body>

<%
String bn=request.getParameter("branch");

if(bn.equals("MKR")){
%>
<jsp:forward page="mkr.jsp">

<jsp:param name="bn" value="MKR"/>
<jsp:param name="email" value="mkr@gmail.com"/>

</jsp:forward>

<%
} else if(bn.equals("BTM")){
		

%>

<jsp:forward page="btm.jsp">

<jsp:param value="BTM" name="bn"/>
<jsp:param name="email" value="btm@gmail.com"/>

</jsp:forward>


<%} else {

%>
<jsp:forward page="other.jsp">

<jsp:param value="INVALID" name="bn"/>
<jsp:param name="email" value="INVALID"/>


</jsp:forward>

<%
}

%>
</body>
</html>