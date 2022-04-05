<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %>
<z:admin pageTitle="accountuser">
	<div align="left">
	<h2>Account Manager</h2>
	<div>
		<a class="btn btn-info" onclick="action();" href="accountuser">Allow</a>
		&nbsp;&nbsp;&nbsp;
		<a class="btn btn-info" onclick="action();" href="accountblock">Block</a>
	</div>
	<table class="table table-dark table-striped mt-3" border="1">
		<tr>
			<th>Idacc</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Personid</th>
			<th>Username</th>
			<th>Password</th>
			<th>Allow</th>
			<th>Acction</th>
		</tr>
		<c:forEach items="${listaccountuser}" var="accountuser">
		<tr>
			<td>${accountuser.idacc}</td>
			<td>${accountuser.name}</td>
			<td>${accountuser.phone}</td>
			<td>${accountuser.persionid}</td>
			<td>${accountuser.username}</td>
			<td>${accountuser.password}</td>
			<td>${accountuser.allow}</td>
			<td>
				<c:set var = "allow" value = "${accountuser.allow}"/>
		  		<c:if test = "${allow == true}">
					<a id="togglee" class="btn btn-light" href="blockaccount?idacc=${accountuser.idacc}">Block</a>
		 		</c:if>
		 		<c:if test = "${allow == false}">
					<a id="togglee" class="btn btn-light" href="unblockaccount?idacc=${accountuser.idacc}">Unblock</a>
		 		</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</z:admin>

