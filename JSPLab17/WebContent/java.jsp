<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<body>

<c:import url="header.jsp">

<c:param name="companyName" value="JP MORGAN"></c:param>

</c:import>

<h1>This is java.jsp page <br />

Hello !!${param.stuName } ,<br />
You Have Selected ${param.couName }

</h1>

<c:import url="footer.jsp">
<c:param name="companyName" value="JP MORGAN"></c:param>
</c:import>
</body>
</html>