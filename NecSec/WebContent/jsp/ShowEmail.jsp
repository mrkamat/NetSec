<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/NecSec/css/my.css">
<title>Email for </title>
</head>
<body>
<c:if test="${empty user}">
    <c:redirect url="/jsp/Login.jsp" />
</c:if>
	<div id="header">
		<form name="session" method="post" action="/NecSec/MailServer">
			<input type="submit" name="logout" value="Logout" />
			<c:set var="username" value="${user}"/>
			<h2>Welcome <c:out value="${user}"></c:out></h2>
			<c:if test="${fn:contains(username,'ncsu')}">
			<h2>NCSU EMAIL</h2>	
			</c:if>
			<c:out value="${user}"></c:out>
			 <c:out value="${pageContext.session.id}" />
			<input type="hidden" name="username" value="<c:out value="${username}" />" />
		</form>
	</div>
	<div id="folders">
		<p>
		<input type="button" onClick="location.href('/NecSec/jsp/composeEmail.jsp');" value="Compose" />
		</p>
		<p>
		Inbox
		</p>
		<p>
		Sent
		</p>
		<p>
		Trash
		</p>
	</div>
	<div id="emails"> 
		<table>
		<tr>
		<td>From</td>
		<td>Subject</td>
		<td>Date</td>
		</tr>
		<tr>
		<td>Sneh</td>
		<td><a href="<c:url value="/jsp/show.jsp"/>">Subject from database</a></td>
		<td>Date from Database</td>
		</tr>
		</table>
	</div>
</body>
</html>