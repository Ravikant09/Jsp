<%@ page import="java.io.*" %>
<html>


<body>

<%

String path=request.getRealPath("/");
out.write("<h1>path"+path+"</h1>");
path=path+"WEB-INF/myfiles";
//this is path
File dir=new File(path);
String str[]=dir.list();
if(str.length==0){
%>
<font color="red" size="6">No Files To Download</font>

<%
}
else{
for(int i=0;i<str.length;i++){
String fnm=str[i];
%>
<br /><%=fnm%>:<a href="download.sunny?filename=<%=fnm%>">Click Here To Download</a>

<%
	}
}

%>

</body>
</html>