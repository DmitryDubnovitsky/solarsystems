<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<style type="text/css">
 body{
background-color:#DCDCDC;
cursor: pointer; }
.container{
margin-top: 10%;
}
</style>
</head>
<body>
<div class="container"> 
 <table  class="table table-striped" >
    <thead>
			<tr>
				<th><spring:message code="label.name" /></th>
				<th><spring:message code="label.fio" /></th>
				<th><spring:message code="label.atm" /></th>
				<th><spring:message code="label.distance" /></th>
				<th><spring:message code="label.diameter" /></th>
				<th>&nbsp;</th>
			</tr>
	</thead>
			<tbody>
				<tr>
					<td>${planet.name}</td>
					<td>${planet.fio}</td>
					<td>${planet.atmosphere}</td>
					<td>${planet.distance}</td>
					<td>${planet.diameter}</td>
				</tr>
			</tbody>
  </table>
</div>
</body>
</html>