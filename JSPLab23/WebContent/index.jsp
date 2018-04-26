<%@  page isELIgnored="false" %>
<html>

<body>



<h1>&copy;TechSupport</h1>
<h2>Login Form</h2>
<font color="red" size="6">${MSG }</font>
<form action="login.sunny" method="post">

<table>

<tr>
<td>UserName</td>
<td><input type="text" name="username"/></td>
</tr>


<tr>
<td>Password</td>
<td><input type="password" name="password"/></td>
</tr>

<tr>

<td colspan="4" align="center"><input type="submit" name="Login"/></td>
</tr>

</table>
</form>

<h2>

<a href="register.jsp">New User SignUp</a>	<br />
<a href="forgotpw.jsp">Forgot My Password</a>

</h2>


</body>
</html>