<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Fetch Data from Database</title>
	<style>
		table {
			border-collapse: collapse;
			width: 100%;
			text-align: left;
		}
		th, td {
			padding: 8px;
			text-align: left;
			border-bottom: 1px solid #ddd;
		}
		th {
			background-color: #f2f2f2;
			color: #333;
		}
		tr:hover {
			background-color: #f5f5f5;
		}
	</style>
</head>
<body>
	<%
		// Connect to the database
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employees","root","sudhashree");
		
		// Execute a query to fetch data from the table
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("SELECT * FROM employee");
	%>
	
	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Username</th>
			<th>Email</th>
			<th>Password</th>
			<th>Gender</th>
			<th>Designation</th>
		</tr>
		
		<%
			// Loop through the result set and display each row in a table row
			while(rs.next()) {
		%>
				<tr>
					<td><%= rs.getString("fname") %></td>
					<td><%= rs.getString("lname") %></td>
					<td><%= rs.getString("username") %></td>
					<td><%= rs.getString("email") %></td>
					<td><%= rs.getString("password") %></td>
					<td><%= rs.getString("gender") %></td>
					<td><%= rs.getString("designation") %></td>
				</tr>
		<%
			}
		
			// Close the database connection and result set
			rs.close();
			stmt.close();
			con.close();
		%>
	</table>
</body>
</html>