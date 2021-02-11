package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import entity.LoginInfo;
import dbutil.DBUtil;
import org.apache.log4j.Logger;

public class LoginDAO {
	public final static Logger logger = Logger.getLogger(DBUtil.class.getName());

	public static boolean isUserValid(LoginInfo userDetails)
	{	logger.info("validating admin at login");
		boolean validStatus = false;
		try {

			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM login_info WHERE username = '"+userDetails.getUserName()+"' AND password = '"+userDetails.getPassword()+"'");
			while(rs.next()) {

				validStatus = true;
			}
			logger.debug("Admin validated :"+userDetails.getUserName());

			DBUtil.closeConnection(conn); // closed connection
		}
		catch(Exception e) {

			logger.debug("Admin cannot be validated : "+userDetails.getUserName());
			e.printStackTrace();
		}
		return validStatus;
	}
}
