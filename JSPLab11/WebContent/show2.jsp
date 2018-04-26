
<html>

<body>

<jsp:useBean id="ST1" class="com.sunny.Student"></jsp:useBean>	<!--here empty Student object Created  -->

<jsp:setProperty property="sid" name="ST1"/>
<jsp:setProperty property="name" name="ST1"/>

Sid:-><jsp:getProperty property="sid" name="ST1"/>
Name:-><jsp:getProperty property="name" name="ST1"/>
Phone:-><jsp:getProperty property="phone" name="ST1"/>

</body>
</html>



<!-- Parameter Name and Variable Name should be same  -->