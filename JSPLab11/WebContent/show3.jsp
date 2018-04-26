
<html>

<body>

<jsp:useBean id="ST3" class="com.sunny.Student"></jsp:useBean>	<!--here empty Student object Created  -->

<jsp:setProperty property="sid" name="ST3"/>

Sid:-><jsp:getProperty property="sid" name="ST3"/>
Name:-><jsp:getProperty property="name" name="ST3"/>
Phone:-><jsp:getProperty property="phone" name="ST3"/>

</body>
</html>


<!-- sid means sid will be set so while getting even though we give value for all  -->
<!-- sid,name and phone but we get only sid value and other as default value  -->
<!-- i.e 0 and null for phone and name respectively -->
<!-- Parameter Name and Variable Name should be same  -->