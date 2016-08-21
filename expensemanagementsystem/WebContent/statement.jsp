<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="css/jquery-ui.css">
<link rel="stylesheet" href="css/common.css">
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">
<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat : "yy-mm-dd",
				maxDate : '+d',
					changeMonth: true,
				      changeYear: true
		}).val()
	});
	$(function() {
		$("#datepicker1").datepicker({
			dateFormat : "yy-mm-dd",
				maxDate : '+d',
				changeMonth: true,
			      changeYear: true
		}).val()
	});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>statement page</title>
</head>
<body bgcolor="#d2ff52" background="img/bg.jpg">
	<div align="center">
		<font color="red">
			<h1>View Statements between Date Range</h1>
		</font>
		<hr>
		<sf:form method="post" action="viewstatement.obj"
			modelAttribute="statement">

			<fieldset>
				<table>
					<tr>
						<td><sf:label path="fromdate">From Date :</sf:label></td>

						<td><sf:input path="fromdate" size="20" maxlength="15"
								id="datepicker" placeholder="YYYY/MM/DD" 
								onkeydown="return false" /> <font color="red"><small>date
									cannot be blank</small></font><br>
						<sf:errors path="fromdate" cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr> 
						<td><sf:label path="todate">To Date :</sf:label></td>

						<td><sf:input path="todate" size="20" maxlength="15"
								id="datepicker1" placeholder="YYYY/MM/DD" 
								onkeydown="return false" /> <font color="red"><small>date
									cannot be blank</small></font><br> <sf:errors path="todate"
								cssStyle="color:red"></sf:errors></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="View statement"></td>
					</tr>
				</table>
			</fieldset>
		</sf:form>
		<a href="goback.obj"><img alt="" src="img/Back.png"
			title="Go Back"></a>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>