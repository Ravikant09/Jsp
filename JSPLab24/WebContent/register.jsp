<%@ page isELIgnored="false" %>
<html>

<body>

<h1>&copy;TechSupport</h1>
<h2>Registration From</h2>

<font color="red" size="6">${MSG }</font>
<form action="register.sunny">

<table>

<tr>
<td>Full Name</td>
<td><input type="text" name="fname"/></td>
</tr>

<tr>
<td>Email ID</td>
<td><input type="text" name="email"/></td>
</tr>

<tr>
<td>Phone</td>
<td><input type="text" name="phone"/></td>
</tr>

<tr>
<td>User Name</td>
<td><input type="text" name="username"/></td>
</tr>

<tr>
<td>Password</td>
<td><input type="password" name="password"/></td>
</tr>

<tr>

<td colspan="4" align="center"><input type="submit" name="Register"/></td>
</tr>



</table>

</form>

</body>
</html>