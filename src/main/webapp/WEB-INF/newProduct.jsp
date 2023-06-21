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
<title>New Product</title>
</head>
<body>
	<h1>New Product</h1>
	<p>
		<a href="/">Home</a>
	</p>
	<form:form action="/products/new" method="post"
		modelAttribute="product">
		<table>
			<thead>
				<tr>
					<td>Name:</td>
					<td><form:errors path="name" /> <form:input class="input"
							path="name" /></td>
				</tr>
				<tr>
					<td>Description:</td>
					<td><form:errors path="description" /> <form:input class="input"
							path="description" /></td>
				</tr>
				<tr>
					<td>Price:</td>
					<td><form:errors path="price" /> <form:input class="input" type="number"
							path="price" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</thead>
		</table>
	</form:form>
</body>
</html>