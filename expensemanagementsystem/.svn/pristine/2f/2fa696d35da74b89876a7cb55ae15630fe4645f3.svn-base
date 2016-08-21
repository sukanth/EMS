<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/displaytag.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="js/allexpensemanager.js"></script>
<title>All Expense Manager</title>
<style type="text/css">
.ACTIVE {
	color: green;
	font-weight: bold;
}

.INACTIVE {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg">
	<div align="center">
		<h1>
			<font color="red">All Expenses Manager</font>
		</h1>
		<hr>
		<!-- <!-- 		<table border="1"> -->

		<!-- <!-- 			<tr style="background-color: red"> -->
		<!-- <!-- 				<td>username</td> -->
		<!-- <!-- 				<td>expense name</td> -->
		<!-- <!-- 				<td>date</td> -->
		<!-- <!-- 				<td>amount</td> -->
		<!-- <!-- 			</tr> -->

		<%-- <c:forEach var="tem" items="${va}"> --%>
		<!-- <tr> -->
		<%-- 					<td>${tem.username }</td>
					<td>${tem.name }</td>
					<td>${tem.date }</td>
					<td>${tem.amount }</td>
				</tr> --%>
		<h2>
			<font style="outline-style: groove;" color="green"> Total
				expenses Amount is:</font><b> <font style="color: maroon;"><c:out
						value="${sessionScope.all }"></c:out></font></b>
		</h2>
		<display:table name="sessionScope.va" pagesize="20" sort="list"
			export="true" id="display">
			<display:setProperty name="export.pdf.filename"
				value="EMS_allexpenses.pdf"></display:setProperty>
			<display:setProperty name="export.excel.filename"
				value="EMS_allexpenses.xls"></display:setProperty>
			<display:setProperty name="export.csv.filename"
				value="EMS_allexpenses.csv"></display:setProperty>
			<display:column property="id" headerClass="sortable" title="Id"
				paramId="id"></display:column>
			<display:column property="username" title="User Name"
				headerClass="sortable" sortable="true"></display:column>
			<display:column property="name" title="Expense Name"
				headerClass="sortable"></display:column>
			<display:column property="date" title="Expense date"
				headerClass="sortable" sortable="true"></display:column>
			<display:column property="amount" title="Expense amount"
				headerClass="sortable" sortable="true"></display:column>
			<display:column property="applicableto" title="Applicable To"
				headerClass="sortable"></display:column>
			<c:if test="${display.status == 'ACTIVE' }">
				<display:column property="status" title="status code"
					headerClass="sortable" sortable="true" class="ACTIVE"></display:column>
			</c:if>
			<c:if test="${display.status == 'INACTIVE' }">
				<display:column property="status" title="status code"
					headerClass="sortable" sortable="true" class="INACTIVE"></display:column>
			</c:if>
			<display:column title="Delete Expense" media="html">
				<a href="delete.obj?id=${display.id}" onclick="return confirmDel('${sessionScope.username}','${display.id}')"><img alt=""
					src="img/del.png" title="Delete"></a>
			</display:column>
		</display:table>
		<a href="goback.obj"><img alt="" src="img/Back.png"
			title="Go Back"></a>
		<%-- 			</c:forEach> --%>
		<!-- 		</table> -->
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>