<%@ page import="com.sunny.Student" %>


<html>

<body>

<h1>Using useBean and Other Tags<br />

<jsp:useBean id="ST" class="com.sunny.Student" scope="session"></jsp:useBean>

<jsp:setProperty property="sid" name="ST" value="101"/>
<jsp:setProperty property="name" name="ST" value="Mohan"/>
<jsp:setProperty property="phone" name="ST" value="7872872872"/>
<br />


	Sid:<jsp:getProperty property="sid" name="ST"/>
	Name:<jsp:getProperty property="name" name="ST"/>
	Phone:<jsp:getProperty property="phone" name="ST"/>

</h1>

</body>
</html>