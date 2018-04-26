<%@ taglib prefix="sunny" uri="http://sunny.com/tags" %>

<html>

<body>



<form action="test.sunny" method="post">

<table align="center">

<tr>

<td><h2>Enter Name</h2></td>
<td><input type="text" name="fname"/></td>
<td><sunny:error property="fname"/></td>


</tr>

<tr>

<td><h2>Enter Email</h2></td>
<td><input type="text" name="email"/></td>
<td><sunny:error property="email"/></td>


</tr>

<tr>
<td align="center" colspan="4">
<input type="submit" value="TEST"/>
</td>
</tr>



</table>

</form>

</body>
</html>

