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
    <title>Finished | Selling <c:out value="${item.title}"/></title>
    <link rel="stylesheet" href="/files/css/sellOne.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="/files/js/sizeSelection.js"></script>
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
                <div class="selections hide">
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
    <div class="mid-container">
        <div class="mid-content">
            <div class="left-side">
                <div class="left-top">
                    <div class="left-title">
                        <h1><c:out value="${item.title}"/></h1>
                    </div>
                </div>
                <div class="left-pic">
                    <img src="<c:out value="${item.image}"/>" alt="">
                </div>
            </div>
            <hr>
            <div class="right-side-fix">
                <div class="right-side">
                    <div class="right-top">
                        <div class="right-title">
                            <p>Select Size</p>
                        </div>
                        <div class="right-sub-title">
                            <p>U.S. Men's Sizes</p>
                        </div>
                    </div>
                    <form:form method="POST" action="/create-listing" modelAttribute="sell">
                    <form:input type="hidden" path="item" value="${item.id}"/>
                    <form:input type="hidden" path="user" value="${user.id}"/>
                    <div class="select-size">
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>4</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>4.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>5.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>6</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>6.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>7</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>7.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>8</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>8.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>9</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>9.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>10</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>10.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>11</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>11.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>12</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>12.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>13</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>13.5</p>
                                </div>
                            </div>
                        </div>
                        <div class="options">
                            <div class="options-content">
                                <div class="size">
                                    <p>14</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sell-price">
                        <div class="sell-price-content">
                            <div class="decoration">$</div>                            
                            <form:input class="amount" type="text" path="price" maxlength="7" placeholder="Enter Price"/>
                        </div>
                    </div>
                    </form:form>
                </div>
            </div> 
        </div>
    </div>   
</body>
</html>