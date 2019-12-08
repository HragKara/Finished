<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Finished</title>
    <link rel="stylesheet" href="/files/css/index.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
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
                        		<li><a href="/account">My Account</a></li>
                        	</c:otherwise>
                        </c:choose>
                    </ul>
                </div>
                <div id="box-1"></div>
                <div id="box-2"></div>
                <div id="box-3"></div>
            </div>
        </div>
    </div>
    <div class="shoes">
    	<div id="travis-jordan-1"><img src="/files/img/travis-scott.png" alt="Travis Scott Air Jordan 1"></div>
    	<div id="ow-1"><img src="/files/img/off-white.png" alt="Off-White Air Jordan 1"></div>
    	<div id="crocs"><img src="/files/img/crocs.png" alt="Air Jordan 1 Pinnacle"></div>
    </div>
    <div class="content-sec">
        <div class="content-container">
            <div class="content">
                <h1>Buy Your Shoes With Confidence</h1>
                <h3>Checkout our stock of authentic hybeast shoes.</h3>
            </div>
            <div class="buttons">
                <div class="browse-btn">
                    <button>Browse</button>
                </div>
                <div class="login-btn">
                    <button>Login</button>
                </div>
            </div>
        </div>
    </div>
    <div id="right-bottom">
        <div id="b-r-1"></div>
        <div id="b-r-2"></div>
        <div id="b-r-3"></div>
    </div>
    <div id="bottom-left">
        <div id="b-l-1"></div>
        <div id="b-l-2"></div>
        <div id="b-l-3"></div>
    </div>
</body>
</html>