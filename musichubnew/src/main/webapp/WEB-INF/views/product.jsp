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
    <!-- <script src="${bjs}/product.js"></script> -->
    
    <script type="text/javascript">
    angular.module('sortApp', [])
    .controller('mainController', function($scope)
    		{
      // create the list  
      $scope.music = <%=request.getAttribute("productlist")%>
    });    
    </script>
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
<div class="container" ng-app="sortApp" ng-controller="mainController">

    
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search music" ng-model="searchMusic">
      </div>      
    </div>
  </form>
  <table class="table table-bordered table-striped">
<thead>
      <tr>
        <td>
          <a href="#" ng-click="sortType = 'id'; sortReverse = !sortReverse">
            Pdct ID 
            <span ng-show="sortType == 'id' && !sortReverse" class="glyphicon glyphicon-arrow-up"></span>
            <span ng-show="sortType == 'id' && sortReverse" class="glyphicon glyphicon-arrow-down"></span>         
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'name'; sortReverse = !sortReverse">
          Music Type
            <span ng-show="sortType == 'name' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'name' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
        <td>
          <a href="#" ng-click="sortType = 'brand'; sortReverse = !sortReverse">
         Brand
            <span ng-show="sortType == 'brand' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'brand' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>
         <td>
    <a href="#" ng-click="sortType = 'price'; sortReverse = !sortReverse">
  
         Price
            <span ng-show="sortType == 'price' && !sortReverse" class="glyphicon glyphicon-arrow-down"></span>
            <span ng-show="sortType == 'price' && sortReverse" class="glyphicon glyphicon-arrow-up"></span>
          </a>
        </td>

      </tr>
    </thead> 
    <tbody>
   
      <tr ng-repeat="roll in music | orderBy:sortType:sortReverse | filter:searchMusic">
        <td>{{roll.PdctID}}     <form action="display" method="post">       
       <input type="hidden" name="pid" value="{{roll.PdctID}}"/> 
        <input type="submit" value="More"/>
         </form></td>
        <td>{{roll.MusicType}}</td>
        <td>{{roll.Brand}}</td>
       <td>{{roll.Price}}</td>
       <td>{{roll.More}}</td>
<td>
         
        </td>
      </tr>
   
      </form>
    </tbody>
  </table>  
  <p class="text-center text-muted">
    <a href="#">more info about MH</a>
  </p>
  <p class="text-center">
    by <a href="index">Musichub</a>
  </p>  
</div><br>
 <footer class="container-fluid text-center">
  <p>Copyright:MH email:manju@mh.com</p>
</footer>
</body>
</body>
</html>