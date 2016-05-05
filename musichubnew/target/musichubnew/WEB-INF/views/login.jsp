<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <c:url value="/resources/images" var="img" />
    <c:url value="/resources/bootstrap/js" var="bjs" />
    <c:url value="/resources/bootstrap/css" var="bcss" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="${bcss}/bootstrap.min.css" rel="stylesheet">
   <script src="${bjs}/jquery-2.1.1.min.js"></script>
    <script src="${bjs}/bootstrap.min.js"></script>
</head>
<body>
<form role="form">
  <div class="form-group">
    <label for="uname">I am:</label>
    <input type="text" class="form-control" id="uname">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="checkbox">
    <label><input type="checkbox"> Remember me</label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</body>
</html>