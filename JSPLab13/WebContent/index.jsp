
<html>

<body>

<%pageContext.setAttribute("MSG", "Page Scope Message"); %>
<%pageContext.setAttribute("MSG", "Page Scope Message",PageContext.PAGE_SCOPE); %>
<%pageContext.setAttribute("MSG", "Request Scope Message",PageContext.REQUEST_SCOPE); %>
<%pageContext.setAttribute("MSG", "Session Scope Message",PageContext.SESSION_SCOPE); %>
<%pageContext.setAttribute("MSG", "Context Scope Message",PageContext.APPLICATION_SCOPE); %>
<%pageContext.setAttribute("ERROR","ERROR Message",PageContext.APPLICATION_SCOPE); %>
<%pageContext.setAttribute("FIND","FIND Message"); %>

<h1>Using Web Container Object <br />

<%String msg1=request.getAttribute("MSG").toString();%>
<%String msg2=session.getAttribute("MSG").toString();%>
<%String msg3=application.getAttribute("MSG").toString();%>
<%String msg4=pageContext.getAttribute("MSG").toString();%>

	MESSAGE1:-<%=msg1 %> <br />
	MESSAGE2:-<%=msg2 %> <br />
	MESSAGE3:-<%=msg3 %> <br />
	MESSAGE4:-<%=msg4 %> <br />

</h1>

<hr> USING PAGE CONTEXT OBJECT <br /> 

<%String data1=pageContext.getAttribute("MSG").toString(); %>
<%String data2=pageContext.getAttribute("MSG",PageContext.PAGE_SCOPE).toString(); %>
<%String data3=pageContext.getAttribute("MSG",PageContext.REQUEST_SCOPE).toString(); %>
<%String data4=pageContext.getAttribute("MSG",PageContext.SESSION_SCOPE).toString(); %>
<%String data5=pageContext.getAttribute("MSG",PageContext.APPLICATION_SCOPE).toString(); %>

	data1:-<%=data1 %><br />
	data2:-<%=data2 %><br />
	data3:-<%=data3 %><br />
	data4:-<%=data4 %><br />
	data5:-<%=data5 %><br />


<hr>
<%Object obj1=pageContext.findAttribute("MSG"); %>
<%Object obj2=pageContext.findAttribute("ERROR"); %>
<%Object obj3=pageContext.findAttribute("FIND"); %>

	obj1:-<%=obj1 %><br />
	obj2:-<%=obj2 %><br />
	obj3:-<%=obj3 %><br />


</body>
</html>


<!-- Since MSG is same for all so by Default it is PageScope so MSG is PageScopeMessage -->

