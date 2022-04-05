<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<html>
<head>
<meta charset="UTF-8">
<title>Upload Result</title>
</head>
<body>
    <jsp:include page="_menu.jsp"/>
   
    <h3>Uploaded Files:</h3>
    
    Description: ${description}
    
    <br/>
    <a href="file:///C:/SpringWebTool/apache-tomcat-9.0.59-windows-x64/apache-tomcat-9.0.59/wtpwebapps/RentRoom/resources/img/%E2%80%94Pngtree%E2%80%94instagram%20icon%20instagram%20logo_3584852.png">demo</a>
    
    <c:forEach items="${uploadedFiles}" var="file">
           - ${file} <br>
    </c:forEach>

</body>
</html>