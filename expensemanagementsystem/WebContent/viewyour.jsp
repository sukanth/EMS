<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
    <%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/displaytag.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Your Expenses</title>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg">
	<div align="center">
		<h1>
			<font color="red">Your Expenses</font>
		</h1>
<!-- 		<table border="1"> -->

<!-- 			<tr style="background-color:red"> -->
<!-- 				<td>username</td> -->
<!-- 				<td>expense name</td> -->
<!-- 				<td>date</td> -->
<!-- 				<td>amount</td> -->
<!-- 			</tr> -->

<%-- 			<c:forEach var="tem" items="${you}"> --%>
<!-- 				<tr> -->
<%-- 					<td>${tem.username }</td> --%>
<%-- 					<td>${tem.name }</td> --%>
<%-- 					<td>${tem.date }</td> --%>
<%-- 					<td>${tem.amount }</td> --%>
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</table> -->
		<h2><font style="outline-style:groove;" color="green">Your total expense is:</font><b> <font style="color: maroon;"><c:out value="${sessionScope.total }"></c:out></font></b></h2>
		<display:table pagesize="5" name="sessionScope.you" sort="list" export="true">
		<display:caption> Expenses Spent by you</display:caption>
		<display:setProperty name="export.pdf.filename" value="EMS_yourexpenses.pdf"></display:setProperty>
		<display:setProperty name="export.excel.filename" value="EMS_yourexpenses.xls"></display:setProperty>
		<display:setProperty name="export.csv.filename" value="EMS_yourexpenses.csv"></display:setProperty>
		<display:column property="username" title="username" headerClass="sortable"></display:column>
		<display:column property="name" title="Expense name" headerClass="sortable"></display:column>
		<display:column property="date" title="Expense date" headerClass="sortable" sortable="true"></display:column>
		<display:column property="amount" title="amount" headerClass="sortable" sortable="true"></display:column>
		<display:column property="applicableto" title="Applicable To" headerClass="sortable"></display:column>
		
		</display:table>
		<a href="back.obj"><img alt="" src="img/Back.png" title="Go Back"></a>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>