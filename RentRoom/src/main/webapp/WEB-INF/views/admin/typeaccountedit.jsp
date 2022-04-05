<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
 
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %> 
<z:admin pageTitle="login">
	<div align="left">
	<h2>Type Account</h2>
	</div>	
	<div class="card pt-4 pb-5" align="center" style="margin-left:30%; margin-right:30%;">
		<h2>Edit Type Account</h2>
		<div>
		<form:form action="" method="post" modelAttribute="typeaccountuser" class="col-7" align="left">
		  <div class="mb-3">
		    <label  class="form-label">Type Name</label>
		    <form:input path="typename" value="" class="form-control" />
		  </div>
		  <button type="submit" class="btn btn-secondary" style="width:100%;">Save</button>
		</form:form>
		</div>
	</div>
</z:admin>