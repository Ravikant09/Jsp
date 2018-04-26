
<html>
<body>
<jsp:include page="header.jsp">

<jsp:param value="SUNNY'S World" name="cname"/>
</jsp:include>
<form action="test.jsp">

<h1>Search The Banks</h1>

<select name="branch">

<option value="Enter Branch">Enter Branch</option>
<option value="MKR">MATHIKERE</option>
<option value="BTM">BTM LAYOUT</option>
<option value="HSR">HOSUR ROAD</option>
</select>

<input type="submit" value="Submit">
</form>

<jsp:include page="footer.jsp">

<jsp:param value="SUNNY'S World" name="cname"/>
</jsp:include>


</body>
</html>