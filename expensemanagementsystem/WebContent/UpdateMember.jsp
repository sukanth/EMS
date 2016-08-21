<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/displaytag.css" type="text/css">
<script type="text/javascript" src="js/UpdateMember.js"></script>
<title>Update Member</title>
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
<body  background="img/bg.jpg">
	<div align="center">
		<h1>
			<font color="#a90329">List of Members to Update/Delete</font>
		</h1>
		<display:table pagesize="10" sort="list" export="true"
			name="sessionScope.l" id="display">

			<display:caption>Update/Delete Members</display:caption>
			<display:column property="username" title="UserName"
				headerClass="sortable" sortable="true" paramId="username"></display:column>
			<display:column property="role" title="Role" sortable="true"></display:column>
			<c:if test="${display.status_cd=='A'}">
				<display:column property="status_cd" title="Status" sortable="true"
					class="ACTIVE"></display:column>
				<display:column title="Update" media="html">
					<a href="DoUpdate.obj?id=${display.username}"><img alt=""
						src="img/up.png" title="Delete"></a>
				</display:column>
				<display:column title="Delete" media="html">
					<a href="DoDelete.obj?id=${display.username}" onclick="return confirmDelete()"><img alt=""
						src="img/del.png" title="Delete"></a>
				</display:column>
			</c:if>
			<c:if test="${display.status_cd=='I'}">
				<display:column property="status_cd" title="Status" sortable="true"
					class="INACTIVE"></display:column>
				<display:column title="Update" media="html">
					<a href="#" onclick="cantPerformUpdate('${sessionScope.username}')"><img alt=""
						src="img/up.png" title="Delete"></a>
				</display:column>
				<display:column title="Delete" media="html">
					<a href="#" onclick="cantPerformDelete('${sessionScope.username}')"><img alt=""
						src="img/del.png" title="Delete"></a>
				</display:column>
			</c:if>
		</display:table>
		<a href="goback.obj"><img alt="" src="img/Back.png"
			title="Go Back"></a>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>