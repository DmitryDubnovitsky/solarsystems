<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Edit Planet</title>
<style type="text/css">
.edit {
 margin-left: 25%; 
 margin-top:3%;
 color: #BC8F8F;
}
</style>
</head>
<body>
	<jsp:include flush="false" page="menu.jsp" />
  <div class="edit">
	<h2>Edit '${planet.name}' </h2>
  </div>
	<form:form method="post"
		action="${pageContext.request.contextPath}/planet/save"
		commandName="planet">
		<form:hidden path="id" />
		<jsp:include flush="true" page="planet_form.jsp" />
	 </form:form>
  <div class="edit">
	<a href="${pageContext.request.contextPath}/"
		title="Planet List">Planet List</a>
  </div>
</body>
</html>