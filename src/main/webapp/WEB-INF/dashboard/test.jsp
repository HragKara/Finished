<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><c:out value="${item.title }"/></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/files/css/item.css" type="text/css">
    <script src="/files/js/openSizes.js"></script>
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
    <div class="title-container">
        <div class="title-content">
            <h1><c:out value="${item.title}"/></h1>
            <p id="condition">Condition : <span class="green-font">Dead Stock</span></p>
            <a id="sell-nav" href="#">
            	<a href="/selling/<c:out value="${item.id}"/>">
            		<div class="sell-box">
        				<p>SELL NOW</p>
        			</div>
        		</a>
        	</a>
        </div>
    </div>
    <%-- <c:forEach items="${lists}" var="list">
    
    </c:forEach> --%>
    <div class="below-title-container">
        <div id="buy-new" class="box">
            <div class="box-title">
                <h1>Buy New</h1>
            </div>
            <c:set var="lowest" value="${lowest}"/>
            <c:choose>
	            <c:when test="${lowest != null }">
	            	<p><span class="give-margin">Size <c:out value="${lowest.size }"/></span> | <span class="green-font big">$<c:out value="${lowest.price }"/></span></p>
	            </c:when>
	            <c:otherwise>
	            	<p><span class="give-margin">Size - -</span> | <span class="green-font big">$ - - </span></p>
	            </c:otherwise>
	        </c:choose>
            <div class="select-size">
            	<div class="select-size-box">
            		<p>Select a U.S. Mens Size</p>
            		<div class="sizes">
            			<div class="options">
            				<c:set var="size" scope="session" value="${four.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${four.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>4</p>
	                                    <c:set var="size" scope="session" value="${four.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${four.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                    	</a>        
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${fourHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${fourHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>4.5</p>
	                                    <c:set var="size" scope="session" value="${fourHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${fourHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                    	</a>        
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${five.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${five.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>5</p>
	                                    <c:set var="size" scope="session" value="${five.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${five.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                    	</a>        
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${fiveHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${fiveHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>5.5</p>
	                                    <c:set var="size" scope="session" value="${fiveHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${fiveHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${six.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${six.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>6</p>
	                                    <c:set var="size" scope="session" value="${six.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${six.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${sixHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${sixHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>6.5</p>
	                                    <c:set var="size" scope="session" value="${sixHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${sixHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${seven.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${seven.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>7</p>
	                                    <c:set var="size" scope="session" value="${seven.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${seven.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${sevenHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${sevenHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>7.5</p>
	                                    <c:set var="size" scope="session" value="${sevenHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${sevenHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${eight.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${eight.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>8</p>
	                                    <c:set var="size" scope="session" value="${eight.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${eight.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${eightHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${eightHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>8.5</p>
	                                    <c:set var="size" scope="session" value="${eightHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- - </p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${eightHalf.price}"/></p>
	                                   	</c:if>                                  
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${nine.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${nine.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>9</p>
	                                    <c:set var="size" scope="session" value="${nine.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${nine.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${nineHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${nineHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>9.5</p>
	                                    <c:set var="size" scope="session" value="${nineHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${nineHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${ten.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${ten.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>10</p>
	                                    <c:set var="size" scope="session" value="${ten.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${ten.price}"/></p>
	                                   	</c:if>  
	                                </div>
	                            </div>
                            </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${tenHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${tenHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>10.5</p>   
	                                    <c:set var="size" scope="session" value="${tenHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${tenHalf.price}"/></p>
	                                   	</c:if>                               
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${eleven.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${eleven.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>11</p>
	                                    <c:set var="size" scope="session" value="${eleven.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${eleven.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${elevenHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${elevenHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>11.5</p>
	                                    <c:set var="size" scope="session" value="${elevenHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${elevenHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${twelve.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${twelve.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>12</p>
	                                    <c:set var="size" scope="session" value="${twelve.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${twelve.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${twelveHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${twelveHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>12.5</p>
	                                    <c:set var="size" scope="session" value="${twelveHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${twelveHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${thirteen.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${thirteen.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>13</p>
	                                    <c:set var="size" scope="session" value="${thirteen.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${thirteen.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${thirteenHalf.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${thirteenHalf.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>13.5</p>
	                                    <c:set var="size" scope="session" value="${thirteenHalf.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${thirteenHalf.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
                        <div class="options">
                        	<c:set var="size" scope="session" value="${fourteen.price}"/>
                            <c:if test="${size != null }">
                            	<a href="/checkout/${fourteen.id}">
                            </c:if>
	                            <div class="options-content">
	                                <div class="size">
	                                    <p>14</p>
	                                    <c:set var="size" scope="session" value="${fourteen.price}"/>
	                                    <c:if test="${size == null }">
	                                    	<p class="price">- -</p>
	                                    </c:if>
	                                    <c:if test="${size != null }">
	                                    	<p class="price">$<c:out value="${fourteen.price}"/></p>
	                                   	</c:if>
	                                </div>
	                            </div>
	                        </a>
                        </div>
            		</div>
            	</div>
            </div>
        </div>
    </div>
    <div class="item-picture">
        <img src="<c:out value="${item.image}"/>" alt="Off-White MCA">
    </div>
    <div class="dis-section-container">
        <div class="section-content">
            <div class="content-left">
                <p><span class="tabs">COLORWAY</span> : <c:out value="${item.colorway}"/></p>
                <P><span class="tabs">RELEASE DATE</span> : <c:out value="${item.rel}"/></P>
                <p><span class="tabs">RETAIL PRICE</span> : <c:out value="${item.retail}"/></p>
            </div>
            <div class="content-right">
                <p><c:out value="${item.description}"/></p>
            </div>
        </div>
    </div>
    <div class="related-prod-container">
        <div class="related-prod-content">
            <div class="section-title">
                <h1>Related Products</h1>
            </div>
            <div class="trending-bottom">
            	<a href="/dashboard/3">
                	<div class="trending-prod">
                   		<img class="fix-pic" src="/files/img/fixed-pic.png" alt="">
                    	<div class="prod-title">
                        	<p>Jordan 1 Retro High Off-White Chicago</p>
                    	</div>
                	</div>
                </a>
                <a href="/dashboard/2">
	                <div class="trending-prod">
	                    <img src="/files/img/travis-prod.png" alt="">
	                    <div class="prod-title">
	                        <p>Jordan 1 Retro High <br> Travis Scott</p>
	                    </div>
	                    
	                </div>
	            </a>
	            <a href="/dashboard/4">
	                <div class="trending-prod">
	                    <img src="https://finished12.s3-us-west-1.amazonaws.com/jordan-1-Croc.png" alt="">
	                    <div class="prod-title">
	                        <p>Air Jordan 1 <br> Pinnacle Croc</p>
	                    </div>                   
	                </div>
                </a>
                <a href="/dashboard/1">
	                <div class="trending-prod">
	                    <img src="/files/img/mca.png" alt="">
	                    <div class="prod-title">
	                        <p>Nike Air Force 1 <br> "MCA"</p>
	                    </div>	                    
	                </div>
                </a>
            </div>
        </div>
    </div>
    <!-- <div class="sales-container">
        <div class="sales-content">
            <h1>RESENT SALES</h1>
            <table class="table table-striped table-dark ">
                <thead>
                  <tr>
                    <th scope="col">Size</th>
                    <th scope="col">Sold Price</th>
                    <th scope="col">Date Purchased</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">6.5</th>
                    <td>Mark</td>
                    <td>Otto</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Jacob</td>
                    <td>Thornton</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Larry</td>
                    <td>the Bird</td>
                  </tr>
                </tbody>
              </table>
        </div> -->
    </div>
</body>
</html>