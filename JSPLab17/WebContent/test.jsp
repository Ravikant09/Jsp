<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<body>
<c:import url="header.jsp">

<c:param name="companyName" value="JP MORGAN"/>

</c:import>

<form action="home.jsp" method="post">

<h2>Enter Course Name</h2>
<input type="text" name="courseName" />

<h2>Enter Student Name</h2>
<input type="text" name="studentName" />

<input type="submit" value="Submit" />
</form>

<c:import url="footer.jsp">

<c:param name="companyName" value="JP MORGAN"/>

</c:import>

</body>
</html>

<!-- c:param must be with c:import of c:redirect -->