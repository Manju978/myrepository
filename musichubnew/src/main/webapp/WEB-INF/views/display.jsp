<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <c:url value="/resources/images" var="img" />
    <c:url value="/resources/bootstrap/js" var="bjs" />
    <c:url value="/resources/bootstrap/css" var="bcss" />
<head>
    <meta charset="UTF-8">
    <title>Let's Rock</title>
    <!-- CSS -->
    <link rel="stylesheet" href="${bcss}/bootstrap.min.css">
    <link rel="stylesheet" href="${bcss}/product.css">
    <style type="text/css">
        body { padding-top:50px; }
    </style>
    <!-- JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
    <script src="${bjs}/product.js"></script>
    <script type="text/javascript"> 
    </script>
</head>
<body>
display
 <!--<%=request.getParameter("pid") %>  -->
${p.PdctID}
</body>
</html>