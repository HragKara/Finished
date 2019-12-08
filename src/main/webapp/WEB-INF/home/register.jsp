<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Finished | Login or Register</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.3/examples/cover/">
    <link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="/files/css/register.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
</head>
<body>
	<div class="logo">
        <img src="files/img/logo.png" alt="Finsihed Logo">
        <h1 id="logo-name">FINISHED</h1> 
  </div>
  <div class="container sign-up-box display">
	<div class="registration-box">
		<form:form method="POST" action="/register" modelAttribute="user">
			<div class="register-error">
				<p><c:out value="${error}"/></p>
			</div>
			<h1>Sign-Up</h1>
			<p>Name</p>
			<form:input type="text" name="name" path="name" placeholder="Enter Name"/>
			<p>Email</p>
			<form:input type="email" name="email" path="email" placeholder="Enter Email"/>
			<p>Password</p>
			<form:input type="password" name="password" path="password" placeholder="Enter Password"/>
			<input type="submit" name="submit" value="Sign-Up">
		</form:form>
	</div> 
	<div class="login-box">
		<form method="post" action="/login">
			<div class="login-error">
				<p><c:out value="${login}"/></p>
			</div>
			<h1>Login</h1>
			<p>Email</p>
			<input type="email" name="email" placeholder="Enter Email">
			<p>Password</p>
			<input type="password" name="password" placeholder="Enter Password">
			<input type="submit" name="login" value="Login">
			<a href="#">Forgot your password?</a>
		</form>
	</div> 	
  </div>
</body>
</html>