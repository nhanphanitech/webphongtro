<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Manager</title>
</head>
<body>
<div align="center">
	<table border="1" cellpadding="5">
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
		<c:forEach items="${listaccountuser}" var="accountuser">
		<tr>
			<td>${accountuser.idacc}</td>
			<td>${accountuser.name}</td>
			<td>${accountuser.phone}</td>
			<td>${accountuser.persionid}</td>
			<td>${accountuser.username}</td>
			<td>${accountuser.password}</td>
			<td>${accountuser.allow}</td>
			<td>${accountuser.idtype}</td>
			<td>
				<a href="edit?id=${accountuser.idacc}">Edit</a>
				&nbsp;&nbsp;&nbsp;
				<a href="delete?id=${accountuser.idacc}">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
</div>	
</body>
</html>