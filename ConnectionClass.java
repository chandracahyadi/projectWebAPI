package com.medium.api;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionClass {
	public Connection getConnectionMySQL()
	{
		Connection con = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbtesthome","root","root");
		}
		catch (Exception ex)
		{
			System.out.print("Login Error. Username or Password Not Valid");
			System.out.println("Error in CConnection.getConnectionACA()");
		}

		return con;
	}
}
