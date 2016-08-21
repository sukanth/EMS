<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/displaytag.css" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Expenses</title>
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery.blockUI.js" type="text/javascript"></script>
<script type="text/javascript">
function showLoadingQuestionnaire(){
    $.blockUI.defaults.css = {
          width:      '30%',
          top:        '40%',
          left:       '35%',
          textAlign:  'center',
          cursor:     'wait'
                  };
  $(document).ajaxStart($.blockUI({ message: '<img src="'+getContextRoot()+'/img/spinnerLarge.gif" />' })).ajaxStop($.unblockUI);
}
</script>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg" onload="showLoadingQuestionnaire()">
	<div align="center">
		<h1>
			<font color="red">All Expenses</font>
		</h1>
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
		<display:table name="sessionScope.va" pagesize="10" sort="list"
			export="true">
			
			<display:caption> Expenses you are involved in</display:caption>
			<display:setProperty name="export.pdf.filename"
				value="EMS_allexpenses.pdf"></display:setProperty>
			<display:setProperty name="export.excel.filename"
				value="EMS_allexpenses.xls"></display:setProperty>
			<display:setProperty name="export.csv.filename"
				value="EMS_allexpenses.csv"></display:setProperty>
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
				
		</display:table>

		<a href="back.obj"><img alt="" src="img/Back.png" title="Go Back"></a>
		<%-- 			</c:forEach> --%>
		<!-- 		</table> -->
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>