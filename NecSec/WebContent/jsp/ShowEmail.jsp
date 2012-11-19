<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Email for </title>
</head>
<body>
	<c:out value="${user}" />
	<c:if test="${param.username=='ncsu'}">
	<h2>NCSU EMAIL</h2>	
	</c:if> 
	<table>
	<tr>
	
	</tr>
	</table>
</body>
</html>