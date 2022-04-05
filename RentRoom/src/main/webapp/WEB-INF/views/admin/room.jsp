<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %>
<z:admin pageTitle="room">
	<div align="left">
	<h2>Room Manager</h2>
	<div>
		<a class="btn btn-secondary" href="accountuser">Create</a>
		<span style="margin-left:81%;">
			<a class="btn btn-info" href="roomaccept">Allow</a>
			<a class="btn btn-info" href="room">Block</a>
		</span>
		
		</div>
		
	</div>
	<table class="table table-dark table-striped mt-3" border="1">
		<tr>
			<th>Idroom</th>
			<th>Price</th>
			<th>Acreage</th>
			<th>Allow</th>
			<th>Detail</th>
			<th>Acction</th>

		</tr>
		<c:forEach items="${listRoom}" var="room">
		<tr>
			<td>${room.idroom}</td>
			<td>${room.price}</td>
			<td>${room.acreage}</td>
			<td>${room.allow}</td>
			<td>${room.detail}</td>
			<td>
				<a class="btn btn-light" href="editroom?idroom=${room.idroom}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a class="btn btn-light" href="delete?id=${room.idroom}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	</div>	
</z:admin>

