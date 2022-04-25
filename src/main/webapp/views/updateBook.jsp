<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<h3>Update Book</h3>
	<p style='background-color:yellow;width:max-content;'> ${updateResult} </p>
	<form action="updateBook" method="post">
		Book Name: <input type="text" name="bname" required/><br/><br/>
		<hr/>
		New Book Name: <input type="text" name="name" required/><br/><br/>
		New Book Price: <input type="number" name="price" required/><br/><br/>
		New Book Author Name: <input type="text" name="aname" required/><br/><br/>
		New Book Publisher Name: <input type="text" name="pname" required/><br/><br/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Update Book"/>
	</form>
</body>
</html>