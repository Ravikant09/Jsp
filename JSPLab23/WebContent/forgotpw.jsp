<%@ page isELIgnored="false" %>
<html>

<body>

<h1>&copy;TechSupport</h1>
<h2>Password Assistance Form</h2>

<font color="red" size="6">${MSG }</font>
<form action="forgotpw.sunny" method="post">

<table>

<tr>
<td>Email ID</td>
<td><input type="text" name="email"/></td>
</tr>

<tr>

<td colspan="4" align="center"><input type="submit" name="Show My Password"/></td>
</tr>

</table>
</form>

</body>
</html>