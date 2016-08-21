<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/displaytag.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bulk operation</title>
<style type="text/css">
.status {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg">
	<div align="center">
		<h1>
			<font color="red">Bulk Operation</font>
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
		<display:table name="sessionScope.va" pagesize="10" sort="list">
			<display:column property="id" headerClass="sortable" title="Id"></display:column>
			<display:column property="name" title="Expense Name" headerClass="sortable"></display:column>
			<display:column property="status" title="status code" headerClass="sortable"  class="status"></display:column>
		</display:table>
		<a href="goback.obj"><img alt="" src="img/Back.png"
			title="Go Back"></a>
		<%-- 			</c:forEach> --%>
		<!-- 		</table> -->
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>