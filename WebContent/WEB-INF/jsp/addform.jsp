<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="row">
		<h1>Add New Employee</h1>
		<form class="col-sm-6" action="save" method="post">
			<div class="form-group">
				<label for="exampleInputEmail1">Name</label> <input type="email"
					class="form-control" aria-describedby="emailHelp"
					placeholder="Enter email" path="name" name="name">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">salary</label> <input type="text"
					class="form-control" placeholder="salary" path="salary"
					name="salary">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">designation</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					placeholder="designation" path="designation" name="designation">
			</div>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>

</body>
</html>