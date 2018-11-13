<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<h1>Employees List</h1>
<table border="2" width="70%" cellpadding="2">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Salary</th>
		<th>Designation</th>
		<th>Edit</th>
		<th>Delete</th>
	</tr>
	<c:forEach var="emp" items="${list}">
		<tr>
			<td>${emp.id}</td>
			<td>${emp.name}</td>
			<td>${emp.salary}</td>
			<td>${emp.designation}</td>
			<td><a href="editemp/${emp.id}">Edit</a></td>
			<td><a href="deleteemp/${emp.id}">Delete</a></td>
		</tr>
	</c:forEach>
</table>
<br />
<a href="empform">Add New Employee</a>
