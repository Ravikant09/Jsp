
<html>

<body>

<jsp:include page="header.jsp">

<jsp:param value="SUNNY'S World" name="cname"/>

</jsp:include>

This is btm.jsp Home Page <br />
which shows ${param.bn} branch details
<br />
 
 Contact Email:${param.email}
 
<jsp:include page="footer.jsp">

<jsp:param value="SUNNY'S World" name="cname"/>

</jsp:include>


</body>
</html>