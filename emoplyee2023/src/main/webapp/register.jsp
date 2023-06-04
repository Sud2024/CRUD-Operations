<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>	
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>User Registration Form</h2>
	<form action="EmployeeServlet" method="post">
		<label for="firstname">First Name:</label>
		<input type="text" id="firstname" name="firstname" required><br><br>
		
		<label for="lastname">Last Name:</label>
		<input type="text" id="lastname" name="lastname" required><br><br>

		<label for="username">Username:</label>
		<input type="text" id="username" name="username" required><br><br>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required><br><br>
		
		<label for="password">Password:</label>
		<input type="password" id="password" name="password" required><br><br>
		
		<label for="gender">Gender:</label>
		<select id="gender" name="gender" required>
			<option value="">--Select Gender--</option>
			<option value="male">Male</option>
			<option value="female">Female</option>
			<option value="other">Other</option>
		</select><br><br>
		<label for="poss">designation:</label>
		<select id="designation" name="designation" required>
			<option value="">--Select designation--</option>
			<option value="fresher">fresher</option>
			<option value="exp">experience</option>
			<option value="other">Other</option>
		</select><br><br>
		
	
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>