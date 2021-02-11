package dbutil;

import exceptions.databaseExceptions.DatabaseConnectException;
import exceptions.databaseExceptions.DatabaseException;
import org.apache.log4j.Logger;

import java.sql.*;

public class DBUtil {
	public final static Logger logger = Logger.getLogger(DBUtil.class.getName());

	public static Connection getConnection() throws DatabaseConnectException {
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
			throw new DatabaseConnectException("Unable to delete member from database","06",e);
		}
		return connection;
	}
	
	
	public static void closeConnection(Connection conn) throws DatabaseConnectException {
		try {
			conn.close();
		} catch (SQLException e) {
			logger.error("Error occurred while closing member DB connection",e);
			throw new DatabaseConnectException("Unable to delete member from database","07",e);
		}
	}
}
