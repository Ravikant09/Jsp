<%@ taglib uri="http://sunny.com/tags" prefix="sunny"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="mohan"%>
<html>

<body>
<h1>

<mohan:set var="x" value="5" scope="session"></mohan:set>

<sunny:for var="0">
<br />Block 1
</sunny:for>

<sunny:for var="3">
<br />Sunny Welcomes You Here 
</sunny:for>

<sunny:for var="${x }">
<br />This is Index Page
</sunny:for>

</h1>

</body>
</html>