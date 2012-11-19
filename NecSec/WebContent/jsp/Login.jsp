<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm()
{
	if(document.Login.username.value=="")
	{
	      alert("Enter a valid Username");
	      document.Login.username.focus();
	      return false;
	}
	if(document.Login.Password.value=="")
	{
	      alert("Password cannot be left blank");
	      document.Login.Password.focus();
	      return false;
	}
	return true;
	
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Gmail Or NCSU Email</title>
</head>
<body>
<h1>Welcome</h1>
<form name="Login" method="post" action="../MailServer" onSubmit="return(validateForm())">
<p>
<label>User Name</label>
<input type="text" name="username" />
</p>
<p>
<label>Password</label>
<input type="password" name="Password" />
</p>
<p>
<input type="submit" value="Submit" />
</p>
</form>
<a href="CreateNewUser.jsp">Register New User</a>
</body>
</html>