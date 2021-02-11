package dbutil;

import exceptions.databaseExceptions.DatabaseException;
import org.apache.log4j.Logger;

import java.sql.*;

public class DBUtil {
	public final static Logger logger = Logger.getLogger(DBUtil.class.getName());

	public static Connection getConnection()
	{
		String sqlUsername = "root";
        String sqlPassword = "prasad";
        String dbName = "soc";
        
		Connection connection = null;
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
		    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+dbName, sqlUsername , sqlPassword);
		}
		catch(Exception e) {
			logger.error("Error occurred while establishing DB connection ",e);
			e.printStackTrace();
		}
		return connection;
	}
	
	
	public static void closeConnection(Connection conn)
	{
		try {
			conn.close();
		} catch (SQLException e) {
			logger.error("Error occurred while closing member DB connection",e);
			e.printStackTrace();
		}
	}
}
