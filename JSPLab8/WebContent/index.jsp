<%@ page isELIgnored="true"%>
<html>

<body>
<h1>
This is Index Page

<%request.setAttribute("NAME", "Sunny"); %>
<br /> 
Name :${NAME}

</h1>
</body>
</html>