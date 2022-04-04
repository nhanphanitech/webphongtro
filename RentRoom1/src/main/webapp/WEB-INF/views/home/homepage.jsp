<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %> 
<z:user pageTitle="login">
<style>


</style>
<div class="container mb-5">
		<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
    
      <img src="https://blog.grabhotel.net/content/images/2020/12/can-ho-apartment-la-gi.jpg" class="d-block w-100" alt="...">
    </div>
  </div>
	</div>	
</div>
<div class="container mb-5">
<div class=" mb-3 bg-dark" style="height:5%;">
<h5>LISTROOM</h5>
</div>
    <div class="row g-2">
    		<c:forEach items="${listRoom}" var="room">

			
        <div class="col-md-4">
            <div class="card">
                <div class="img-container">
                    <div class="d-flex justify-content-between align-items-center p-2 first"><span class="wishlist"><a>${room.idroom}</a></span></div> <img src="https://blog.grabhotel.net/content/images/2020/12/can-ho-apartment-la-gi.jpg" class="img-fluid">
                </div>
                <div class="product-detail-container">
                	<div class="d-flex justify-content-between align-items-center">
                        <h6 class="mb-0">Price: </h6>  <span class="">$${room.price}</span>
                    </div>
                    <div class="d-flex justify-content-between align-items-center">
                    	<h6 class="mb-0">Acreage: </h6>  <span class="">${room.acreage}</span>
                    </div>                  
                     <div class="d-flex justify-content-between align-items-center">
                        <h6 class="mb-0">Detail: </h6>  <span class="">${room.detail}</span>
                    </div>
                    <div class="mt-3"> <a  class="btn btn-secondary" style="width:100%;" href="detail?idroom=${room.idroom}">Submit</a> </div>
                </div>
            </div>
        </div>
        </c:forEach>
</div>
</div>
	
</z:user>