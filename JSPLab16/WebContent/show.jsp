<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="mohan" %>
<html>

<body>
<h1>SUNNY'S WORLD WELCOME YOU</h1>

<table border="2" style="font-size:26;color: red;">
<tr>
<td>String,Wrappers and Date</td>
<td>
	<mohan:out value="${requestScope.EM }" /> <br />
	<mohan:out value="${sessionScope.PH }" /> <br />
	${applicationScope.DOB } <br />

</td>

</tr>





<tr>

<td>Collection of String,Wrappers and Date</td>

<td>

	<table bgcolor="#c3d599" style="font-size:26;color: red;">

	<tr>
		<mohan:forEach var="x" items="${requestScope.AL }">
	
		<td>${x }</td>

		</mohan:forEach>

	</tr>
	</table>

	<table bgcolor="wheet" style="font-size:26;color: red;">

	<tr>
		<mohan:forEach var="x" items="${sessionScope.STR }">
	
		<td>${x }</td>

		</mohan:forEach>
	</tr>

	</table>

</td>

</tr>


<tr>

<td>Collection of Collections (using JSTL)</td>



<td>
	<table bgcolor="#c3d599" style="font-size:26;color: red;">

		<mohan:forEach var="list" items="${requestScope.AL1 }">
	
		<tr>

			<mohan:forEach var="x" items="${list }">
	
			<td>${x }</td>
	
			</mohan:forEach>
		</tr>
	
			</mohan:forEach>
	

	</table>



</td>

</tr>



<tr>

<td>Customer or UserDefine Class Object</td>
<td>
	CID:${CUST.cid }	<br />			<!-- same as sessionScope.CUST.cid -->
	CNAME:${sessionScope.CUST.cname } <br />
	Email:${sessionScope.CUST.email } <br />
	Phone:${sessionScope.CUST.phone } <br />
	ACCN0:${CUST.account.accno } <br />
	AType:${sessionScope.CUST.account.atype } <br />
	Balance:${sessionScope.CUST.account.bal } <br />
	Street:${sessionScope.CUST.account.address.street } <br />
	City:${sessionScope.CUST.account.address.city } <br />

</td>

</tr>



<tr>

<td>Collections of Customer or UserDefine Class Object</td>
<td>

	<table bgcolor="#c3d599" style="font-size:26;color: red;">

		<tr>
		<td>Cid</td>
		<td>Cname</td>
		<td>Email</td>
		<td>Phone</td>
		<td>Accno</td>
		<td>Atype</td>
		<td>Balance</td>
		<td>Street</td>
		<td>City</td>
		</tr>
	
		<mohan:forEach var="cust" items="${sessionScope.CS }">
			<tr>

			<td>${cust.cid }</td>
			<td>${cust.cname }</td>
			<td>${cust.email }</td>
			<td>${cust.phone }</td>
			<td>${cust.account.accno }</td>
			<td>${cust.account.atype }</td>
			<td>${cust.account.bal }</td>
			<td>${cust.account.address.street }</td>
			<td>${cust.account.address.city }</td>
	
			</tr>
	
		</mohan:forEach>


	</table>

</td>

</tr>

<tr>

<td> Map Object</td>

<td>
	<table bgcolor="#c3d599" style="font-size:26;color: red;">
	
		<tr>
			<td>MAP KEY</td>
			<td>MAP VALUE</td>
		</tr>
	
		<mohan:forEach var="entry" items="${sessionScope.HM }">
	
		<tr>
			<td>${entry.key }</td>
			<td>${entry.value }</td>
		</tr>
	
		</mohan:forEach>	
	</table>
</td>	
</tr>

<tr>


<td>Collection of Map Object</td>

<td>

	<table bgcolor="wheet" style="font-size: 26;color: red;">
	<mohan:forEach var="map" items="${requestScope.AL2 }">
	<tr>
		<td>
			<table bgcolor="#c3d599" style="font-size: 26;color: red">
				<tr>
				<td>Map Key</td>
				<td>Map Value</td>
				</tr>
					<mohan:forEach var="entry" items="${map }">
					<tr>
						<td>${entry.key }</td>
						<td>${entry.value }</td>
					</tr>
			
					</mohan:forEach>
			
			</table>
		</td>
	</tr>
	</mohan:forEach>
	</table>
			
</td>
</tr>

</table>
</body>
</html>