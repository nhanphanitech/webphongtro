<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
 
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %> 
<z:admin pageTitle="login">
	<div align="left">
	<h2>Room</h2>
	</div>	
	<div class="card " align="center" style="margin-left:30%; margin-right:30%;">
		<h3>Edit Room</h3>
		<div>
		<form:form action="saveroom" method="post" modelAttribute="room" class="col-7" align="left">
		  <div class="mb-3">
		    <label  class="form-label">Idroom</label>
		    <form:input path="idroom" value="${idroom}" class="form-control" readonly="true"/>
		  </div>
		  <div class="mb-3">
		    <label  class="form-label">Price</label>
		    <form:input path="price" value="${price }" class="form-control" />
		  </div>
		   <div class="mb-3">
		    <label  class="form-label">Acreage</label>
		    <form:input path="acreage" value="${acreage }" class="form-control" />
		  </div>
		    <div class="mb-3">
		    <label  class="form-label">Allow</label>
		    <form:checkbox path="allow"/>
		  </div>
		   <div class="mb-3">
		    <label  class="form-label">Detail</label>
		    <form:input path="detail" value="${detail}" class="form-control" />
		  </div>
		  
		  <button type="submit" class="btn btn-secondary" style="width:100%;">Save</button>
		</form:form>
		</div>
	</div>
</z:admin>