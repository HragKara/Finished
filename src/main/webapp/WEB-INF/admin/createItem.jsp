<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<title>Create Item</title>
</head>
<body>
	<form:form method="POST" action="/create-item" modelAttribute="item">
		<p>Title</p>
		<form:input type="text" path="title" name="title"/>
		
		<p>Description</p>
		<form:textarea rows="30" cols="30" path="description" name="description"></form:textarea>
		
		<p>Release Date</p>
		<form:input type="text" path="rel" name="rel"/>
		
		<p>ColorWay</p>
		<form:input type="text" path="colorway" name="colorway"/>
		
		<p>Retail Price</p>
		<form:input type="text" path="retail" name="retail"/>
		
		<p>Category</p>
		<form:input type="text" path="category" name="category"/>
		
		<p>Upload Image</p>
		<form:input type="text" path="image" name="image"/>
		
		<input type="submit" value="Submit">
	</form:form>
</body>
</html>