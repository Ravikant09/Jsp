<%@ taglib uri="http://sunny.com/tags" prefix="sunny"%>
<html>

<body>
<h1>

<sunny:if test="true">
<br />
	MY FIRST IF BLOCK

</sunny:if>


<sunny:if test="false">
<br />
	MY SECOND IF BLOCK

</sunny:if>

<sunny:if test="${10 eq 16 }">
<br />
	MY THIRD IF BLOCK

</sunny:if>


<sunny:if test="${10 eq 10 }">
<br />
	MY FOURTH IF BLOCK

</sunny:if>


</h1>
</body>
</html>




<!-- if <rtexprvalue>false</rtexprvalue> than we can use either false or true is allowed 
but using scriptlets or EL Expression(say ${10 eq 10 }) will give Error or warning 
saying "test" does not support runtime expressions-->