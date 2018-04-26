
<html>

<body>
<h1>SUNNY'S WORLD WELCOME YOU</h1>
<table border="2" style="font-size:26;color: black;">

<tr>

<td>String,Wrappers and Date</td>
<td>

	${requestScope.EM } <br />
	${sessionScope.PH } <br />
	${applicationScope.DOB } <br />

</td>

</tr>






<tr>

<td>Collection of String,Wrappers and Date</td>
<td>
	${requestScope.AL[0] } <br />
	${requestScope.AL[1] } <br />
	${requestScope.AL[2] } <br />
	${requestScope.AL[3] } <br />
	${requestScope.AL[4] } <br />
	${sessionScope.STR[0] } <br />
	${sessionScope.STR[1] } <br />
	${sessionScope.STR[2] } <br />
	${sessionScope.STR[3] } <br />
	${sessionScope.STR[4] } <br />

</td>

</tr>

<tr>

<td>Collection of Collections (using JSTL)</td>
<td>NOT Implemented Yet</td>

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

<td>Collections of Customer or UserDefine Class Object<td>

	<font color="blue"> First Customer
	CID:${CS[0].cid }	<br />		<!-- same as sessionScope.CS[0].cid -->
	CNAME:${CS[0].cname } <br />	<!-- same as sessionScope.CS[0].cname -->
	Email:${sessionScope.CS[0].email } <br />
	Phone:${sessionScope.CS[0].phone } <br />
	ACCN0:${sessionScope.CS[0].account.accno } <br />
	AType:${sessionScope.CS[0].account.atype } <br />
	Balance:${sessionScope.CS[0].account.bal } <br />
	Street:${sessionScope.CS[0].account.address.street } <br />
	City:${sessionScope.CS[0].account.address.city } <br />
	</font>


	<font color="green"> First Customer
	CID:${CS[1].cid }	<br />		<!-- same as sessionScope.CS[1].cid -->
	CNAME:${CS[1].cname } <br />	<!-- same as sessionScope.CS[1].cname -->
	Email:${sessionScope.CS[1].email } <br />
	Phone:${sessionScope.CS[1].phone } <br />
	ACCN0:${sessionScope.CS[1].account.accno } <br />
	AType:${sessionScope.CS[1].account.atype } <br />
	Balance:${sessionScope.CS[1].account.bal } <br />
	Street:${sessionScope.CS[1].account.address.street } <br />
	City:${sessionScope.CS[1].account.address.city } <br />
	</font>


</td>

</tr>

<tr>

<td> Map Object</td>
<td>SID:${HM["sid"] }	<br />					<!-- same as sessionScope.HM["sid"] -->
	SName:${sessionScope.HM["sname"] }	<br />
	Email:${sessionScope.HM["email"] }	<br />
</td>

</tr>

<tr><td>Collection of Map Object(using JSTL)</td>
<td>Not Implemented Yet</td>
</tr>

</table>
</body>
</html>