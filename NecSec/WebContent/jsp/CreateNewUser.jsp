<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function validateForm()
{
    if(document.NewUser.FirstName.value=="" && document.NewUser.LastName.value=="")
    {
      alert("First Name and Last Name cannnot be left blank");
      document.NewUser.FirstName.focus();
      return false;
    }
    if(document.NewUser.username.value=="")
    {
      alert("User Name should not be left blank");
      document.NewUser.username.focus();
      return false;
    }
    if(document.NewUser.Password.value=="")
    {
      alert("Password should not be left blank");
      document.NewUser.username.focus();
      return false;
    }
    if(document.NewUser.Password.value.length < 6)
    {
      alert("Password cannot be less than 6 digits");
      document.NewUser.username.focus();
      return false;
    }
    if(document.NewUser.Password.value != document.NewUser.RePassword.value)
    {
    	  alert("Passwords do not match");
    	  document.NewUser.Password.value=="";
    	  document.NewUser.RePassword.value=="";
          document.NewUser.Password.focus();
          return false;
    }
   	return true;

}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register New User</title>
</head>
<body>
<h1>Register A New User</h1>
<form name="NewUser" method="post" action="../MailServer" onSubmit="return(validateForm())">
<p>
<label>First Name</label>
<input type="text" name="FirstName" />
</p>
<p>
<label>Last Name</label>
<input type="text" name="LastName" />
</p>
<p>
<label>Select A User Name</label>
<input type="text" name="username" />
</p>
<p>
<label>Enter Password</label>
<input type="password" name="Password" />
</p>
<p>
<label>Re-enter the password</label>
<input type="password" name="RePassword" />
</p>
<p>
<input type="Submit" value="Create User" />
</p>
</form>
</body>
</html>