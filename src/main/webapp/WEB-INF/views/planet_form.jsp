<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
.planet {
    margin-left: 2%; 
    padding-left: 100px; 
    padding-top:100px;
   }
   .button {
    margin-left: 13.3%; 
    padding: 10px; 
   }
</style>
</head>
<body>
<div class="planet">
    <table>
        <tr>
            <td><form:label path="name"><spring:message code="label.name"/></form:label></td>
            <td><form:input path="name" /></td>
        </tr>
        <tr>
            <td><form:label path="fio"><spring:message code="label.fio"/></form:label></td>
            <td><form:input path="fio" /></td>
        </tr>
        <tr>
            <td><form:label path="atmosphere"><spring:message code="label.atm"/></form:label></td>
            <td>
            <form:radiobutton path="atmosphere" value="yes" /><spring:message code="label.yes"/>
            <form:radiobutton path="atmosphere" value="no" /><spring:message code="label.no"/>
           </td>
        </tr>
        <tr>
            <td><form:label path="distance"><spring:message code="label.distance"/></form:label></td>
            <td><form:input path="distance" /></td>
        </tr>
         <tr>
            <td><form:label path="diameter"><spring:message code="label.diameter"/></form:label></td>
            <td><form:input path="diameter" /></td>
        </tr>
     </table>
      <div class="button">
         <div class="container" align="justify"> 
           <button type="submit" class="btn btn-primary">Save Planet</button>
        </div>
     </div>  
</div>
</body>
</html>