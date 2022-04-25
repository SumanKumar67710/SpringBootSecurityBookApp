<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1> ${appName} </h1>
	<form action=adminpage method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Home"/>
	</form>
	<hr>
	<form action="logout"  method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    <input type="submit" value="Logout" />
	</form>
	<hr>
	<h3>Add Book</h3>
	<p style='background-color:yellow;width:max-content;'> ${insertResult} </p>
	<form action="addBook" method="post">
		Book Name: <input type="text" name="name" required/><br/><br/>
		Book Price: <input type="number" name="price" required/><br/><br/>
		Book Author Name: <input type="text" name="aname" required/><br/><br/>
		Book Publisher Name: <input type="text" name="pname" required/><br/><br/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Add Book"/>
	</form>
</body>
</html>