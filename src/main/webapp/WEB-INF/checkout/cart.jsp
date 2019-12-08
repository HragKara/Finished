<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Finished | Cart</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/files/css/cart.css">
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
                            <img src="/files/img/icons8-search-24.png">
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
    <div class="mid-container">
        <div class="cart-left">
            <p class="header">Shopping Cart</p>
            <hr>
            <div class="item-description">
                <div class="item-image">
                    <img src="<c:out value="${item.image}"/>" alt="Travis Scott">
                </div>
                <div class="item-details">
                    <div class="product-list-item">
                        <div class="name">
                            <a href="/dashboard/${id}"><c:out value="${item.title}"/></a>
                        </div>
                        <div class="sku">
                            <p>Item: <c:out value="${buying.id}"/></p>
                        </div>
                        <div class="size">
                            <p>Size: <c:out value="${buying.size}"/></p>
                        </div>
                    </div>
                </div>
                <div class="item-total">
                    <div class="price">
                        <p>$<c:out value="${buying.price}"/></p>
                    </div>
                </div>
            </div>
            <hr>
        </div>
        <div class="cart-right">
            <div class="heading">
                <p class="header">Order Summary</p>
            </div>
            <div class="order-summary">
                <div class="order-total-container">
                    <table class="order-total-table">
                        <tbody>
                            <tr class="order-subtotal">
                                <td>Subtotal</td>
                                <td>$<c:out value="${buying.price}"/></td>
                            </tr>
                            <tr class="order-shipping">
                                <td>Shipping:</td>
                                <td>$14.99</td>
                            </tr>
                            <tr class="order-sales-tax">
                                <td>Estimated Tax</td>
                                <td>~$12.96</td>
                            </tr>
                            <tr class="order-final">
                                <td>Total</td>
                                <td>TESTING</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="promo-sec">
                    <div class="promo-content">
                        <p>ADD PROMO CODE</p>
                    </div>
                </div>
                <form:form method="POST" action="/buy-listing/${buying.id}" modelAttribute="order">
                    <form:input type="hidden" path="user" value="${user.id}"/>
                    <form:input type="hidden" path="sold" value="${buying.id}"/>
                    
	                <div class="checkout-section">
	                    <div class="checkout-button">
	                        <div class="checkout-button-content">
	                            <button id="submit" type="submit">CHECKOUT</button>
	                        </div>
	                    </div>
	                </div>
                </form:form>
                <div class="other-option">
                    <p>OR</p>
                </div>
                <div class="paypal-option">
                    <div class="paypal-button">
                        <div class="paypal-button-content">
                            <p>PayPal</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>