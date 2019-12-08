<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Finished | My Account</title>
	<link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="/files/css/account.css">

</head>
<body>
	<div class="nav">
        <div class="nav-container">
            <div class="nav-content">
            	<a href="/dashboard">
	                <div class="logo-left">
	                    <img src="/files/img/logo.png" alt="Finsihed Logo">
	                    <h1 id="logo-name">FINISHED</h1> 
	                </div>
                </a>
                <div class="search-container">
                    <form action="#">
                        <div class="search-box">
                            <img src="files/img/icons8-search-24.png">
                            <input id="search-bar" type="text" name="search" placeholder="Search for product...">
                        </div>
                    </form>
                </div>
                <div class="selections">
                    <ul>
                        <li><a href="#">Stock</a></li>
                        <li><a href="#">Sell</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">About</a></li>
                        <c:choose>
                        	<c:when test="${user == null}">
                        		<li><a href="/registration">Sign Up</a></li>
                        		<li><a href="/registration">Login</a></li>
                        	</c:when>
                        	<c:otherwise>
                        		<li><a href="#">My Account</a></li>
                        	</c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="mid-section">
    	<div class="title">
    		<p>YOUR ORDER'S</p>
    	</div>
    	<c:forEach items="${ordered}" var="order">
	    	<div class="order-box">
	    		<div class="order-pic">
	    			<img src="<c:out value="${order.getSold().getItem().image }"/>">
	    		</div>
	    		<div class="order-info">
	    			<p id="order-num">Order Number: <c:out value="${order.id}"/></p>
	    			<h2 id="order-title"><c:out value="${order.getSold().getItem().title}"/></h2>
	    			<p id="bought-price">Bought Price: $<c:out value="${order.getSold().price }"/></p>
	    			<p id="order-size">Size: <c:out value="${order.getSold().size }"/></p>
	    		</div>
	    	</div>
    	</c:forEach>
    </div>
</body>
</html>