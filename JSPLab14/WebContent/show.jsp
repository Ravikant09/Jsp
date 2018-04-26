<html>

<body>
<h1>SUNNY WELCOME YOU HERE</h1>
<table>

<tr>
<td>Student Name <br /></td>	
<td>${param.sname}<br /></td>
</tr>

<tr>
<td>Primary Email<br /></td>
<td>${paramValues.email[0]}<br /></td>
</tr>

<tr>
<td>Secondary Email<br /></td>
<td>${paramValues.email[1]}<br /></td>
</tr>

<tr>
<td>Host<br /></td>
<td>${header.host}<br /></td>
</tr>

<tr>
<td>Referer<br /></td>
<td>${header.referer}</td>
</tr>


<tr>
<td>JSessionID Cookie<br /></td>
<td>${cookie.JSESSIONID.value}<br /></td>
</tr>

<tr>
<td>Email Cookie<br /></td>
<td>${cookie.email.value}<br /></td>
</tr>

<tr>
<td>Phone Cookie<br /></td>
<td>${cookie.phone.value}<br /></td>
</tr>

<tr>
<td>Context Parameter :State<br /></td>
<td>${initParam.state}<br /></td>
</tr>

<tr>
<td>Context Parameter :City<br /></td>
<td>${initParam.city}<br /></td>
</tr>

<tr>
<td>using PageContext<br /></td>

<td>${pageContext.session.id}<br /></td>
<td>${pageContext.session.lastAccessedTime}<br /></td>
<td>${pageContext.session.creationTime}<br /></td>
<td>${pageContext.request.remoteAddr}<br /></td>
<td>${pageContext.request.method}<br /></td>
<td>${pageContext.request.requestURI}<br /></td>
<td>${pageContext.request.contentType}<br /></td>
<td>${pageContext.request.contentLength}<br /></td>
<td>${pageContext.response.characterEncoding}<br /></td>
<td>${pageContext.servletContext.servletContextName}<br /></td>

</tr>





</table>



</body>
</html>