<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="uproomimg" method="post" modelAttribute="uploadimg"
	enctype="multipart/form-data">
		<div class="form-group">
			<form:input type="file"  id="file" path="file" cssClass="form-control"/> 
		</div>
		<div>
			<input type="submit" value="them phong" class="btn"/>
		</div>
	</form:form>
</body>
</html>