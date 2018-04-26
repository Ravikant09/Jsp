
<html>

<body>
<h1>
<br />1)Storing Attributes in Context or Application Scope
<br />A)Using PageContext object
<%pageContext.setAttribute("CC", "33",PageContext.APPLICATION_SCOPE); %>

<br />B)Using ServletContext object
<%application.setAttribute("C", "30"); %>

<br />2)Storing Attributes in Session Scope

<br />A)Using PageContext object
<%pageContext.setAttribute("BB", "200",PageContext.SESSION_SCOPE); %>

<br />B)Using HttpSession object
<%session.setAttribute("B", "20"); %>



<br />3)Storing Attributes in Request Scope

<br />A)Using PageContext object
<%pageContext.setAttribute("AA", "100",PageContext.REQUEST_SCOPE); %>

<br />B)Using HttpServletRequest object
<%request.setAttribute("A", "10"); %>

<br />4)Storing Attributes in Page Scope

<br />A)Using PageContext object
<%pageContext.setAttribute("X", "99",PageContext.PAGE_SCOPE); %>
<%pageContext.setAttribute("AA", "100"); %>
</h1>


<hr><h2>
<br />MSG1 <%=pageContext.getAttribute("C",PageContext.APPLICATION_SCOPE) %>
<br />MSG2 <%=pageContext.getAttribute("CC",PageContext.APPLICATION_SCOPE) %>
<br />MSG3 <%=pageContext.getAttribute("B",PageContext.SESSION_SCOPE) %>
<br />MSG4 <%=pageContext.getAttribute("BB",PageContext.SESSION_SCOPE) %>
<br />MSG5 <%=pageContext.getAttribute("A",PageContext.REQUEST_SCOPE) %>
<br />MSG6 <%=pageContext.getAttribute("AA",PageContext.REQUEST_SCOPE) %>
<br />MSG7 <%=pageContext.getAttribute("AA",PageContext.PAGE_SCOPE) %>
<br />MSG8 <%=pageContext.getAttribute("X") %>
<br />MSG9 <%=request.getAttribute("A") %>
<br />MSG10 <%=session.getAttribute("B") %>
<br />MSG11 <%=application.getAttribute("C") %>
<br />MSG12 <%=pageContext.getAttribute("A") %><!-- since default is in page map and in page map no A found so give null -->
<br />MSG13 <%=pageContext.getAttribute("Z") %><!-- since default is in page map and in page map no Z found so give null -->

<br />MSG14 <%=pageContext.findAttribute("C") %>
<br />MSG15 <%=pageContext.findAttribute("B") %>
<br />MSG16 <%=pageContext.findAttribute("A") %>
<br />MSG17 <%=pageContext.findAttribute("X") %>
<br />MSG18 <%=pageContext.findAttribute("AA") %>
<br />MSG19 <%=pageContext.findAttribute("BB") %>
</h2>

</body>
</html>