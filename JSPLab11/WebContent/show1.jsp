<%@ page import="com.sunny.Student" %>
<html>

<body>

<jsp:useBean id="ST2" class="com.sunny.Student"></jsp:useBean>	<!--here empty Student object Created  -->

<jsp:setProperty property="*" name="ST2"/>

Sid:-><jsp:getProperty property="sid" name="ST2"/>
Name:-><jsp:getProperty property="name" name="ST2"/>
Phone:-><jsp:getProperty property="phone" name="ST2"/>

</body>
</html>


<!-- * means all sid, name and phone will be set so while getting we get all of then -->
<!-- Parameter Name and Variable Name should be same  -->