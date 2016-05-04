<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
   <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<form role="form">
  <div class="form-group">
    <div class="form-group">
    <label for="uname">I am:</label>
    <input type="text" class="form-control" id="uname">
  </div>
    <div class="form-group">
    <label for="num">Ring me at:</label>
    <input type="text" class="form-control" id="num">
  </div>
    <div class="form-group">
    <label for="desig">I work as a :</label>
    <input type="text" class="form-control" id="desig">
  </div>
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
    <div class="form-group">
    <label for="rpwd">Once More:</label>
    <input type="password" class="form-control" id="rpwd">
  </div>
<button type="submit" class="btn btn-default">Register Me</button>
</form>
</body>
</html>