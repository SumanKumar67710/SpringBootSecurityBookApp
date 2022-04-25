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
	<form action=home method="post">
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Home"/>
	</form>
	<hr>
	<h3>Search Book</h3>
	<p style='background-color:yellow;width:max-content;'> ${searchResult} </p>
	<form action="searchBook" method="post">
		Book Name: <input type="text" name="name" required/><br/><br/>
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		<input type="submit" value="Search Book"/>
	</form>
	<hr/>
	<h3>Books</h3>
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