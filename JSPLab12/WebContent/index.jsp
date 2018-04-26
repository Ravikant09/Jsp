
<html>

<body>
<h1>
<br />1)Storing Attributes in Context or Application Scope
<br />A)Using PageContext object
<%pageContext.setAttribute("MSG1", "ServletContext--->Message1 ",PageContext.APPLICATION_SCOPE); %>

<br />B)Using ServletContext object
<%application.setAttribute("MSG2", "ServletContext--->Message2"); %>

<br />2)Storing Attributes in Session Scope

<br />A)Using PageContext object
<%pageContext.setAttribute("MSG3", "HttpSession--->Message3 ",PageContext.SESSION_SCOPE); %>

<br />B)Using HttpSession object
<%session.setAttribute("MSG4", "HttpSession--->Message4"); %>



<br />3)Storing Attributes in Request Scope

<br />A)Using PageContext object
<%pageContext.setAttribute("MSG5", "ServletRequest--->Message4 ",PageContext.REQUEST_SCOPE); %>

<br />B)Using HttpServletRequest object
<%request.setAttribute("MSG6", "ServletRequest--->Message6"); %>

<br />4)Storing Attributes in Page Scope

<br />A)Using PageContext object
<%pageContext.setAttribute("MSG7", "Page--->Message7 ",PageContext.PAGE_SCOPE); %>
<%pageContext.setAttribute("MSG8", "Page--->Message8 "); %>

</h1>

<hr>
<br />MSG1 <%=pageContext.getAttribute("MSG1",PageContext.APPLICATION_SCOPE) %>
<br />MSG2 <%=pageContext.getAttribute("MSG2",PageContext.APPLICATION_SCOPE) %>
<br />MSG3 <%=pageContext.getAttribute("MSG3",PageContext.SESSION_SCOPE) %>
<br />MSG4 <%=pageContext.getAttribute("MSG4",PageContext.SESSION_SCOPE) %>
<br />MSG5 <%=pageContext.getAttribute("MSG5",PageContext.REQUEST_SCOPE) %>
<br />MSG6 <%=pageContext.getAttribute("MSG6",PageContext.REQUEST_SCOPE) %>
<br />MSG7 <%=pageContext.getAttribute("MSG7",PageContext.PAGE_SCOPE) %>
<br />MSG8 <%=pageContext.getAttribute("MSG8") %>

<br />MSG9 <%=pageContext.findAttribute("MSG2") %>
<br />MSG10 <%=pageContext.findAttribute("MSG5") %>
<br />MSG11 <%=pageContext.findAttribute("MSG6") %>
<br />MSG12 <%=pageContext.findAttribute("MSG3") %>


</body>
</html>