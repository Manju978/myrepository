<!DOCTYPE html>
<html lang="en">
 

 <%@ page isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <c:url value="/resources/images" var="img" />
    <c:url value="/resources/bootstrap/js" var="bjs" />
    <c:url value="/resources/bootstrap/css" var="bcss" />
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MUSICHUB</title>

    <link href="${bcss}/bootstrap.min.css" rel="stylesheet">
   <script src="${bjs}/jquery-2.2.3.js"></script>
    <script src="${bjs}/bootstrap.min.js"></script>
    <style type="text/css">
 .carousel-inner img
  {
      width:50%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }
    </style>    
    </head>
    
    <body>

  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">MH</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">MUSICHUB</a></li>
        <li><a href="#">About</a></li>
     <li><a href="register">Register</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="product">Melodious</a></li>
          <li><a href="product">Rocking</a></li>
          <li><a href="product">Pop</a></li> 
        </ul>
      </li>
        <li><a href="welcome">Login</a></li>
      </ul>
      
    </div>
  </div>
</nav>
<div class="container-fluid">
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1" ></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
      <img src="${img}/1.jpg"/>
                
      </div>

      <div class="item">
        <img src="${img}/2.jpg" alt="Image2">
        
      </div>
    </div>

    <!-- Left and right controls -->
      <a class="left carousel-control" href="#myCarousel" data-slide="prev" role="button"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span></a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next" role="button"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
</div>
</div>
<div class="container text-center">    
  <h3>OUR SPECIALITIES</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="${img}/1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>mh</p>
    </div>
    <div class="col-sm-4"> 
      <img src="${img}/1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>mh</p>    
    </div>
    <div class="col-sm-4">
      <img src="${img}/1.jpg" class="img-responsive" style="width:100%" alt="Image">
      <p>mh</p>
      </div>
   
    </div>
  </div>
</div><br>
  <footer class="container-fluid text-center">
  <p>Copyright:MH email:manju@mh.com</p>
</footer>
</body>
</html>
