<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %>
<z:user pageTitle="bookingbill">
	<div align="center" class="container">
	 <a  class="btn btn-secondary" style="width:10%;" href="bookinglistaccept?idacc=${idacc}" >Accept</a>
	 <a  class="btn btn-secondary" style="width:10%;" href="bookinglist?idacc=${idacc}" >No Accept</a>
	<table class="table table-dark table-striped" border="1">
		<tr>
			<th>IDtaikhoan</th>
			<th>Name</th>
			<th>E-mail</th>
			<th>Address</th>
			<th>Action</th>
			<th>E-mail</th>
			<th>Address</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listBookingBill}" var="bookingbill">
		<tr>
			<td>${bookingbill.id}</td>
			<td>${bookingbill.idacc}</td>
			<td>${bookingbill.idroom}</td>
			<td>${bookingbill.idtype}</td>
			<td>${bookingbill.date}</td>
			<td>${bookingbill.deposit}</td>
			<td>${bookingbill.allow}</td>
			<td>
				<a href="edit?id=${bookingbill.id}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${bookingbill.id}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>

	</div>	
</z:user>

