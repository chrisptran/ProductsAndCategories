<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/css/style.css" />
<title>New Category</title>
</head>
<body>
	<h1>New Category</h1>
	<p>
		<a href="/">Home</a>
	</p>
	<form:form action="/categories/new" method="post"
		modelAttribute="category">
		<table>
			<thead>
				<tr>
					<td>Name:</td>
					<td><form:errors path="name" /> <form:input class="input"
							path="name" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</thead>
		</table>
	</form:form>
</body>
</html>