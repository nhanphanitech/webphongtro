<%@ tag body-content="scriptless" %>
<%@ attribute name="pageTitle" required="true" type="java.lang.String" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<html>
<head>

	<title>RentRoom Home</title>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="./homelayout.css">
	<style>
		@import url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap");
		body {
		    font-family: "Poppins", sans-serif;
		    font-weight: 300
		}
			
			
		.card {
		  background-color: #d6d2d2;
		    border: none;
		    border-radius: 10px
		}
		
		.percent {
		    padding: 5px;
		    background-color: red;
		    border-radius: 5px;
		    color: #fff;
		    font-size: 14px;
		    height: 35px;
		    width: 70px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    cursor: pointer
		}
		
		.wishlist {
		    height: 40px;
		    width: 40px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    border-radius: 50%;
		    background-color: #eee;
		    padding: 10px;
		    cursor: pointer
		}
		
		.img-container {
		    position: relative
		}
		
		.img-container .first {
		    position: absolute;
		    width: 100%
		}
		
		.img-container img {
		    border-top-left-radius: 5px;
		    border-top-right-radius: 5px
		}
		
		.product-detail-container {
		    padding: 10px
		}
		
		.ratings i {
		    color: #a9a6a6
		}
		
		.ratings span {
		    color: #a9a6a6
		}
		
		label.radio {
		    cursor: pointer
		}
		
		label.radio input {
		    position: absolute;
		    top: 0;
		    left: 0;
		    visibility: hidden;
		    pointer-events: none
		}
		
		label.radio span {
		    height: 25px;
		    width: 25px;
		    display: flex;
		    justify-content: center;
		    align-items: center;
		    border: 2px solid #dc3545;
		    color: #dc3545;
		    font-size: 10px;
		    border-radius: 50%;
		    text-transform: uppercase
		}
		
		label.radio input:checked+span {
		    border-color: #dc3545;
		    background-color: #dc3545;
		    color: #fff
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-dark bg-dark" style="padding-right:1%;padding-left:1%;">
	
		<a class="navbar-brand" href="/RentRoom">
			RENTROOM
		</a>
		
		<div class="btn-group dropleft">
		  <c:set var = "username" scope = "session" value = "${sessionScope.username}"/>
		  <c:set var = "idacc" scope = "session" value = "${sessionScope.idaccount}"/>
		  <c:if test = "${username == null}">
		  	<a class="btn btn-light" href="loginform" target="_top">Login</a>
		  	<a class="btn btn-secondary" href="cartform" target="_top">Cart</a>
		  </c:if>
	      <c:if test = "${username != null}">
	         <a class="btn btn-light" data-toggle="dropdown">Account: ${username}</a>
			<div class="dropdown-menu">
				<button class="dropdown-item" type="button">Action</button>
				<a class="dropdown-item" href="bookinglist?idacc=${idacc}">List booking</a>
				<a class="dropdown-item" href="logout">Logout</a>
			</div>
			<div class="btn-group dropleft">
			<a class="btn btn-secondary" href="cartform" target="_top">Cart</a>
			</div>
	      </c:if>
			
			
		</div>
	</nav>

	<div class="mt-5 mb-5">
		<jsp:doBody/>
	</div>

	<footer class="bg-light text-center text-lg-start">
		  <!-- Copyright -->
		  <div class="text-center p-3 bg-dark">
		  <h6 style="color:white;"> @ 2022 Copyright by Codeman Professional Team Of Hutech University</h6>  
		  </div>
		  <!-- Copyright -->
	</footer>
</body>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</html>