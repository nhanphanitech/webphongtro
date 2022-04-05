<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
 
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %> 
<z:user pageTitle="login">
	<div class="card pt-4 pb-5" align="center" style="margin-left:30%; margin-right:30%;">
		<h2>Register</h2>
		<div>
		
		<form:form action="register" method="post" modelAttribute="accountuser" class="col-7" align="left">
		  <div class="mb-3">
		    <label  class="form-label">Name</label>
		    <form:input path="name" type="username" class="form-control" />
		  </div>
		  <div class="mb-3" >
		    <label  class="form-label" >Phone</label>
		    <form:input path="phone" type="phone" class="form-control" />
		  </div>
		    <div class="mb-3" >
		    <label  class="form-label" >Persionid</label>
		    <form:input path="persionid" type="phone" class="form-control" />
		  </div>
		    <div class="mb-3" >
		    <label class="form-label" >Username</label>
		    <form:input path="username" type="username" class="form-control"/>
		  </div>
		    <div class="mb-3" >
		    <label  class="form-label" >Password</label>
		    <form:input path="password" type="password" class="form-control" />
		  </div>
		  <button type="submit" class="btn btn-secondary" style="width:100%;">Create Account</button>
		</form:form>
		</div>
	</div>
</z:user>