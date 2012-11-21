<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function validateForm()
{
	if(document.composeEmail.toEmail.value=="")
	{
	      alert("Enter an email address");
	      document.composeEmail.toEmail.focus();
	      return false;
	}	
	return true;
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/my.css">
<title>Compose New Email</title>
</head>
<body>
<c:if test="${empty user}">
    <c:redirect url="/jsp/Login.jsp" />
</c:if>
<c:out value="${user}"></c:out>
<form name="composeEmail" method="post" action="../MailServer"  onSubmit="return(validateForm())"> 
<div id="compose">
	<p>
	<label>To:</label>
	<input type="text" name="toEmail" />
	</p>
	<p>
	<label>Subject</label>
	<input type="text" name="subject" />
	</p>
	<p>
	<label>Body</label>
	<textarea name="emailBody" rows="5"></textarea>
	</p>
	<p>
	<input type="submit" value="Send" />
	</p>
</div>
</form>
</body>
</html>