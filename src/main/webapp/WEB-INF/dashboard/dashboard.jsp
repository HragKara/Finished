<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Finished | Dashboard</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/files/css/dashboard.css">
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
                        		<li><a href="/account">My Account</a></li>
                        	</c:otherwise>
                        </c:choose>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="slideshow">
        <img src="files/img/dashboard-banner.png" alt="Off-White Air Jordan 1's">
    </div>
    <div class="pop-brands">
        <h1 class="section-title">Popular Brands</h1>
        <div class="brands-container">
            <div class="brand-box">
                <img src="/files/img/Pasted Graphic.png" alt="Air Jordan Brand">
            </div>
            <div class="brand-box">
                <img src="/files/img/Pasted Graphic 1.png" alt="Nike Brand">
            </div>
            <div class="brand-box">
                <img src="/files/img/Pasted Graphic 2.png" alt="">
            </div>
            <div class="brand-box">
                <img src="/files/img/Pasted Graphic 3.png" alt="">
            </div>
        </div>
    </div>
    <hr>
    <div class="trending-sec">
        <div class="trending-cont">
            <div class="trending-top">
                <h1 class="section-title">Trending Now</h1>
                <p>More Shoes</p>
            </div>
            <div class="trending-bottom">
            	<c:forEach items="${shoes}" var="shoe">
            		<a href="/dashboard/${shoe.id}">
		                <div class="trending-prod">
		                    <img src="<c:out value="${shoe.image}"/>" alt="">
		                    <div class="prod-title">
		                        <p><c:out value="${shoe.title}"/></p>
		                    </div>
		                    <%-- <p class="lowest">Lowest Price</p>
		                    <div class="price">
		                        <h1>$<c:out value="${shoe.getLists().findLowest(shoe.id) }"/></h1>
		                    </div> --%>
		                </div>
	                </a>
                </c:forEach>
            </div>
        </div>
    </div>
</body>
</html>