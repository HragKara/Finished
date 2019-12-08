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
    <title>Finished | Selling</title>
    <link rel="stylesheet" href="/files/css/sell.css">
    <link href="https://fonts.googleapis.com/css?family=Poppins|Reem+Kufi&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	
</head>
<body>
	<div class="nav">
        <div class="nav-container">
            <div class="nav-content">
                <div class="logo-left">
                    <img src="files/img/logo.png" alt="Finsihed Logo">
                    <h1 id="logo-name">FINISHED</h1> 
                </div>
                <div class="search-container">
                    <form name="product-search">
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
                        		<li><a href="#">Sign Up</a></li>
                        		<li><a href="#">Login</a></li>
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
            <div class="search-title">
                <h1>Search for product</h1>
                <h3>Find a product to sell to continue . . .</h3>
            </div>
            <div class="bar">
                <hr>
            </div>
            <div id="form-part">
            	<form name="product-search">
            		<div class="search-bar"> 
                		<img id="search-icon" src="/files/img/icons8-search-24.png">
                		<input id="search_text" type="text" name="search_text" placeholder="Search for product, brand, etc">
            		</div>
            	</form>
            </div>
            <div id="search-results">
                
            </div>
        </div>
    </div>
    <script>
    	$(document).ready(function(){
    		$('#search_text').keyup(function(){
    			var txt = $(this).val();
    			console.log(txt);
    			if(txt != ''){
    				$('#search-results').html('');
    				$.ajax({
    					url:"/search/"+txt,
    					method:"get",
    					data: {search: txt},
    					dataType: "text",
    					success: function(data){
    						console.log(data);
    						$('#search-results').html(data)
    					}
    				})
    			}
    			else{
    				return null;
    			}
    		})
    	})
    </script>
</body>
</html>