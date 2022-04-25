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
	<hr>
	<h2>Admin Page</h2>
	<form action="logout"  method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	    <input type="submit" value="Logout" />
	</form>
	<hr>
	<h3>Search Book</h3>
	<form action="search" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Search Book"/>
	</form>
	<hr/>
	<h3>Add Book</h3>
	<form action="newBook" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="ADD Book"/>
	</form>
	<hr/>
	<h3>Update Book</h3>
	<form action="update" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Update Book"/>
	</form>
	<hr/>
	<h3>Delete Book</h3>
	<form action="delete" method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Delete Book"/>
	</form>
	<hr/>
	<h3>All Books</h3>
	  <c:forEach items="${books}" var="book">
  		<div style="border:1px solid blue;width:max-content;padding:20px;">
  			<p> <c:out value="${book.name}" /> </p>
  			<p> <c:out value="${book.price}" /> </p>
  			<p> <c:out value="${book.aname}" /> </p>
  			<p> <c:out value="${book.pname}" /> </p>
  		</div>
	    <br/>  
	  </c:forEach>
</body>
</html>