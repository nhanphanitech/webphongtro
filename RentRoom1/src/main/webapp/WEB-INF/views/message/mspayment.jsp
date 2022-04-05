<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<z:user pageTitle="detail">
<div class="container" align="center"  background-color: #d6d2d2;
		    border-radius: 10px; width:80%; margin-bottom:50%;" >
	
        <div class="col-md-7 mb-4" style="width:60%;">
        	<c:set var = "idacc" scope = "session" value = "${sessionScope.idaccount}"/>
	        <h2>Room was booked</h2>
	         <a  class="btn btn-secondary" style="width:100%;" href="bookinglist?idacc=${idacc}" >CONTINUTE TO LIST</a>
	    </div>
	</div>
</z:user>