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
	<h3>Delete Book</h3>
	<p style='background-color:yellow;width:max-content;'> ${deleteResult} </p>
	<form action="deleteBook" method="post">
		Book Name: <input type="text" name="name" required/><br/><br/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    <input type="submit" value="Delete Book"/>
	</form>
</body>
</html>