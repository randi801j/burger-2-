<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Burger</title>
</head>
<body>
<h2>Edit Burger</h2>
<form:form action="/update/${burger.id}" mode="put" modelAttribute="burger">
	<div>
		<form:label path="name"> Burger Name: </form:label><br>
		<form:errors path="name" class="text-danger"/>
		<form:input path="name" style= "width:250px;"/>
		
	</div>
	<div>
		<form:label path="restaurant"> Restaurant Name: </form:label><br>
		<form:errors path="restaurant" class="text-danger"/>
		<form:input path="restaurant" style= "width:250px;"/>
		
	</div>
	<div>
		<form:label path="rating"> Rating: </form:label><br>
		<form:errors path="rating" class="text-danger"/>
		<form:input path="rating" style= "width:250px;"/>
		
	</div>
	<div>
		<form:label path="notes"> Notes: </form:label>
		<form:errors path="notes" class="text-danger"/>
		<form:textarea path="notes" rows="3" style= "width:250px;" />
		
	</div>
	<div>
		<input type="submit" value="submit" />
	</div>
</form:form>

</body>
</html>