package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import Model.Employee;

public class EmployeeDao {
	public int registerEmployee(Employee employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO employee"
				+ "  (id, fname, lname, username,email, password, gender, designation) VALUES "
				+ " (?, ?, ?, ?, ?,?,?,?);";

		int result = 0;
		System.out.println(employee.getFirstname());
		System.out.println(employee.getLastname());
		System.out.println(employee.getUsername());
		System.out.println(employee.getEmail());
		System.out.println(employee.getPassword());
		System.out.println(employee.getGender());
		System.out.println(employee.getDesignation());
		
		Class.forName("com.mysql.cj.jdbc.Driver");

		try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/employees?useSSL=false",
				"root", "sudhashree");

				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setInt(1, 1);	
			preparedStatement.setString(2, employee.getFirstname());
			preparedStatement.setString(3, employee.getLastname());
			preparedStatement.setString(4, employee.getUsername());
			preparedStatement.setString(5, employee.getEmail());
			preparedStatement.setString(6, employee.getPassword());
			preparedStatement.setString(7, employee.getGender());
			preparedStatement.setString(8, employee.getDesignation());

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (Exception e) {
			// process sql exception
			System.out.println(e);
		}
		return result;
	}

}
