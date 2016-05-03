<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/jquery-2.2.3.js"></script>
<script src="js/bootstrap.min.js"></script>
 
</head>
<body>
<div>
<form action="">
<div class="form-group">
<label for="username">Enter username :</label>
<input type="text" class="form-control" id="uname"/>
</div>
<div class="form-group">
<label for="uemail">Enter email :</label>
<input type="email" class="form-control" id="email"/>
</div>
<div class="form-group">
<label for="udob">Enter DOB :</label>
<input type="date" class="form-control" id="dob"/>
</div>
<div class="form-group">
<label for="upwd">Enter password :</label>
<input type="password" class="form-control" id="pwd"/>
</div>
<div class="form-group">
<label for="confirm">Confirm password :</label>
<input type="password" class="form-control" id="cpwd"/>
</div>
<button type="submit" class="btn btn-default">Register Me</button>
</form>
</div>
</body>
</html>