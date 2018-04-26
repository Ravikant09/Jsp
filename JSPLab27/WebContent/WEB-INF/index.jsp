
<%@ page autoFlush="true" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="myfmt" %>

<myfmt:setBundle basename="messages" scope="session"/>
<myfmt:setLocale value="&{LAN}" scope="session"/>		<!-- LAN is attribute -->

<html>
<body>

<h1 align="center">
Welcome to Sunny's World
</h1>


<h1 align="center">
<myfmt:message key="mywelcome.header"/>
</h1>

<br /><br /><br /><br /><br /><br /><br />

<h2 align="center">
<a href="changelocale.sunny?language=en"> <myfmt:message key="language.english"/> </a> <!-- myfmy:message	:-Current language has to change to English and get from message bundle -->

||
<a href="changelocale.sunny?language=hi"> <myfmt:message key="language.hindi"/> </a> <!-- myfmy:message	:-Current language has to change to Hindi and get from message bundle -->

<!-- do not hard-code any data in jsp instead centralize in some file and that file is 
called as message bundle -->

</h2>


</body>
</html>