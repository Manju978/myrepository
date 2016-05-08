<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
     <c:url value="/resources/images" var="img" />
    <c:url value="/resources/bootstrap/js" var="bjs" />
    <c:url value="/resources/bootstrap/css" var="bcss" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ADD A PRODUCT</title>
<link href="${bcss}/bootstrap.min.css" rel="stylesheet">
   <script src="${bjs}/jquery-2.1.1.min.js"></script>
    <script src="${bjs}/bootstrap.min.js"></script>
    <script type="text/javascript">
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
    </script></script>
</head>
<body>
<h1>
    Add a Person
</h1>

<form:form action="${addAction}" commandName="product">
<table>
    <tr>
        <td>
PdctID
        </td>
        <td>
            <form:input path="PdctID"  />
            <form:hidden path="PdctID" />
        </td> 
    </tr>
 
    <tr>
        <td>
    MusicType      
        </td>
        <td>
            <form:input path="MusicType" />
        </td> 
    </tr>
    <tr>
        <td>
       Price
        </td>
        <td>
            <form:input path="Price" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
         
                <input type="submit"
                    value="<spring:message text="Edit Product"/>" />
            
            
                <input type="submit" value="<spring:message text="Add Product"/>" />
          
        </td>
    </tr>
</table>  
</form:form>
<br>
List of the Products
    
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
</body>
</html>