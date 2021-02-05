package dbutil;

import java.sql.*;

public class DBUtil {

	public static Connection getConnection()
	{
		String sqlUsername = "root";
        String sqlPassword = "prasad";
        String dbName = "soc";
        
		Connection connection = null;
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
		    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbName, sqlUsername , sqlPassword);
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return connection;
	}
	
	
	public static void closeConnection(Connection conn)
	{
		try {
			conn.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
}
