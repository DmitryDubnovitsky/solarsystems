<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Planets</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $("button").click(function(){
        $("div").show(500);
    });   
});
</script>
</head>
<body>
 <jsp:include flush="false" page="menu.jsp" />
	<h2 align="center" style="font-family:monospace;color:maroon; ">
		<spring:message code="label.planet" />
	</h2>
	<div class="button">
       <div class="container" align="justify">
    <p align="right">
  <button type="submit" class="btn btn-success"  >Description of all the planets</button>
    </p>
       </div>
    </div>
  <c:if test="${!empty planetList}">
	<c:forEach items="${planetList}" var="planet">
	<div class="container">
       <h2>
        <a href="${pageContext.request.contextPath}/planet/${planet.name}">${planet.name}</a>
      </h2>
   </div>	
<div style="display: none">
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
					<td><a
						href="${pageContext.request.contextPath}/planet/edit/${planet.id}"><spring:message
								code="label.edit" /></a></td>
					<td><a
						href="${pageContext.request.contextPath}/planet/delete/${planet.id}"><spring:message
								code="label.delete" /></a></td>
				</tr>
		    </tbody>
   </table>
		  </div>
</div>	
  </c:forEach>
</c:if>
</body>
</html>
