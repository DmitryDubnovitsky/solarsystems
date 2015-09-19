<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Add Planet</title>
<style type="text/css">
.word{
  margin-left: 25%; 
  margin-top:3%;
  padding-bottom: 0 px;
  color: #B8860B;
}
</style>
</head>
<body>
<jsp:include flush="false" page="menu.jsp" />
  <div class="word">
	<h2> Add Planet</h2>
  </div>
	<form:form method="post"
		action="${pageContext.request.contextPath}/planet/add"
		commandName="planet">
		  <jsp:include flush="true" page="planet_form.jsp">
		    <jsp:param name="addplanet" value="true" />
		 </jsp:include>
	</form:form>
</body>
</html>