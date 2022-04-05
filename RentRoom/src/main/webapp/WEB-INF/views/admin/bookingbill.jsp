<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %>
<z:admin pageTitle="bookingbill">
	<div align="left">
	<h2>Booking Bill Manager</h2>
	${message}
	<div>
		<a class="btn btn-info" href="bookingaccept">Accept</a>
		&nbsp;&nbsp;&nbsp;
		<a class="btn btn-info" href="bookingbill">No Accept</a>
	</div>
	<table class="table table-dark table-striped mt-3" border="1">
		<tr>
			<th>Id</th>
			<th>Idacc</th>
			<th>Idroom</th>
			<th>Date</th>
			<th>Deposit</th>
			<th>Allow</th>
			<th>Action</th>
		</tr>
		<c:forEach items="${listBookingBill}" var="bookingbill">
		<tr>
			<td>${bookingbill.id}</td>
			<td>${bookingbill.idacc}</td>
			<td>${bookingbill.idroom}</td>
			<td>${bookingbill.date}</td>
			<td>${bookingbill.deposit}</td>
			<td>${bookingbill.allow}</td>
			<td>
				<a class="btn btn-light" href="acceptbill?id=${bookingbill.id}">Accept</a>

			</td>
		</tr>
		</c:forEach>
	</table>

	</div>	
</z:admin>

