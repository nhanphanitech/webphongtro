<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %> 
<z:user pageTitle="card">
	
	<div class="container col-md-7" style="margin-bottom:30%;">
	<h1>List Room</h1>
	<table class="table table-dark table-striped" border="1">
		<tr>
			<th>Room Id</th>
			<th>Price</th>
			<th>Acreage</th>
			<th>Detail</th>
			<th>Action</th>

		</tr>
		<c:forEach items="${listRoom}" var="room">
		<tr>
			<td>${room.idroom}</td>
			<td>${room.price}</td>
			<td>${room.acreage}</td>
			<td>${room.detail}</td>
			<td>
			  <c:set var = "idacc" scope = "session" value = "${sessionScope.idaccount}"/>
			  <c:if test = "${idacc != null}">
			  		<a class="btn btn-light" href="payform?idroom=${room.idroom}">pay</a>
			  </c:if>
			
				&nbsp;&nbsp;&nbsp;
				<a class="btn btn-light" href="removeroom?idroom=${room.idroom}">Delete</a>
				 
			</td>
		</tr>
		</c:forEach>
	</table>
	</div>	
</z:user>