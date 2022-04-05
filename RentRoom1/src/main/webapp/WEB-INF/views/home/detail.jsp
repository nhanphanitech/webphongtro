<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<%@ taglib prefix="z" tagdir="/WEB-INF/tags" %> 
<z:user pageTitle="detail">
	<div class="container" style="display:flex;  background-color: #d6d2d2;
		    border-radius: 10px; width:80%; margin-bottom:10%;" >
		
		
        <div class="col-md-7 mb-4" style="width:60%;">
	        <h2>Room Id: ${room.idroom}</h2>
	          <img src="https://blog.grabhotel.net/content/images/2020/12/can-ho-apartment-la-gi.jpg" class="img-fluid" alt="">
	    </div>
        <div class="col-md-4 mt-5" style="margin-left:4%;">
            <div class="d-flex justify-content-between align-items-center ">
                <h3 class="mb-0">Price: <span> $${room.price}</span></h3>
            </div>
            <div class="d-flex justify-content-between align-items-center  mt-5">
                  <h3 class="mb-0">Acreage: <span>  ${room.acreage}</span></h3>
              </div>                  
            <div class="d-flex justify-content-between align-items-center  mt-5">
                   <h3 class="mb-0">Detail:<span>  ${room.detail}</span></h3>
            </div>
             
            <form class="d-flex justify-content-left mt-5">
              <a  class="btn btn-secondary" style="width:100%;" href="addroom?idroom=${room.idroom}">Add cart</a>
            </form>
        </div>
	</div>
</z:user>