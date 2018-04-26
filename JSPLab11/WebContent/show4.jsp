
<html>

<body>

<jsp:useBean id="ST4" class="com.sunny.Student"></jsp:useBean>	<!--here empty Student object Created  -->

<jsp:setProperty property="sid" name="ST4"/>
<jsp:setProperty property="phone" name="ST4" param="studphone"/> 
					<!--param name for phone should be same as index.html phone name-->

Sid:-><jsp:getProperty property="sid" name="ST4"/>
Name:-><jsp:getProperty property="name" name="ST4"/>
Phone:-><jsp:getProperty property="phone" name="ST4"/>

</body>
</html>
