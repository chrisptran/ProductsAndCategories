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
<title>View Product</title>
</head>
<body>
<h1>${product.name}</h1>
<p><a href="/">Home</a></p>
<h3>Categories</h3>
<ul>
	<c:forEach var="category" items="${assignedCategories}">
		<li><c:out value="${category.name}" /></li>
	</c:forEach>
</ul>
<form action="/products/${id}" method="post">
	<h4>Add Category:</h4>
	<select name="categoryId" id="categoryId">
		<c:forEach var="category" items="${unassignedCategories}">
			<option value="${category.id}">${category.name}</option>
		</c:forEach>
	</select>
	<input type="submit" value="Add" />
</form>
</body>
</html>