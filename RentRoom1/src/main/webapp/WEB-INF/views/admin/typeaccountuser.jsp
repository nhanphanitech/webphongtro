<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %>
<z:admin pageTitle="typeaccountuser">
	<div align="left">
	<h2>Type Account</h2>
	<table class="table table-dark table-striped" border="1">
		<tr>
			<th>Idtype</th>
			<th>NameType</th>
			<th>Acction</th>
		</tr>
		<c:forEach items="${listTypeAccountUser}" var="typeaccountuser">
		<tr>
			<td>${typeaccountuser.idtype}</td>
			<td>${typeaccountuser.typename}</td>
			<td>
				<a class="btn btn-light" href="edittypeaccount?idtype=${typeaccountuser.idtype}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a class="btn btn-light" href="delete?id=${typeaccountuser.typename}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	</div>	
</z:admin>

