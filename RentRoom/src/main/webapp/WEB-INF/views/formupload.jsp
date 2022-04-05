<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
${message}
<form action="upload" method="post" enctype="multipart/form-data">
	<div>File</div>
	<input type="file" name="image">
	<button>Upload</button>
</form>
</body>
</html>