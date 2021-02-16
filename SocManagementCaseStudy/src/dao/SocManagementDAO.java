package dao;

import java.sql.*;
import java.util.*;
import dbutil.DBUtil;
import entity.SocMember;
import entity.Society;
import exceptions.databaseExceptions.DatabaseException;
import org.apache.log4j.Logger;

public class SocManagementDAO  {
	public final static Logger logger = Logger.getLogger(DBUtil.class.getName());

	public static List<SocMember> getAllMembers() throws DatabaseException {
		List<SocMember> memberList = new ArrayList<>();
		try {

			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM society");
			while(rs.next()) {

				SocMember member = new SocMember(rs.getString("Flat_no"),rs.getString("Member_Name"),rs.getString("Owner_or_Tenant"),rs.getInt("Maintenance"));
				memberList.add(member);
			}
			logger.debug("Fetch and Display all members");
			DBUtil.closeConnection(conn);
		}
		catch(Exception e) {
			logger.error("Error in Showing Members ",e);
			throw new DatabaseException("Cannot fetch members List from database","03",e);
		}
		return memberList;
	}
	
	
	public static SocMember getMemberByFlatNo(String flatNo) throws DatabaseException {
		SocMember member = null;
		try {

			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM society WHERE Flat_no = ?");
			ps.setString(1, flatNo);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {

				member = new SocMember(rs.getString("Flat_no"),rs.getString("Member_Name"),rs.getString("Owner_or_Tenant"),rs.getInt("Maintenance"));
			}
			logger.debug("Member info fetched of flat "+member.getFlatNo());

		}
		catch(Exception e) {

			logger.error("Error in getting Member for Editing ",e);
			throw new DatabaseException("Error in getting Member from database",e);
		}
		return member;
	}
	
	
	public static int addMember(SocMember member) throws DatabaseException {
		int status = 0;
		try {

			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO society VALUES(?,?,?,?)");
			ps.setString(1, member.getFlatNo());
			ps.setString(2, member.getMemberName());
			ps.setString(3, member.getOwnership());
			ps.setInt(4, member.getMaintenance());
			status = ps.executeUpdate();
			logger.debug("Added Member successfully into database of flatNo "+member.getFlatNo());
		}
		catch(Exception e) {

			logger.error("Error in adding Member into database ",e);
			throw new DatabaseException("Error : cannot Add member to database","01",e);
		}
		return status;
	}
	
	public static int updateMember(SocMember member) throws DatabaseException {
		int status = 0;
		try {

			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE society SET Member_Name=?, Owner_or_Tenant=?, Maintenance=? WHERE Flat_no=?");
			ps.setString(1, member.getMemberName());
			ps.setString(2, member.getOwnership());
			ps.setInt(3, member.getMaintenance());
			ps.setString(4, member.getFlatNo());
			status = ps.executeUpdate();
			logger.debug("Updated Member successfully and stored in database "+member.getFlatNo());

		}
		catch(Exception e) {
			logger.error("Error in updating Member ",e);
			throw new DatabaseException("Unable edit members from database","02",e);
		}
		return status;
	}
	
	public static int deleteMember(String flatNo) throws DatabaseException {
		int status = 0;
		try{

			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("DELETE FROM society where Flat_no = ?");
			ps.setString(1, flatNo);
			status = ps.executeUpdate();
			logger.debug("deleted specified Member of flat "+flatNo);
		}
		catch(Exception e) {

			logger.error("Error in deleting Member ",e);
			throw new DatabaseException("Unable to delete member from database","04",e);
		}
		return status;
	}

	public int getMemberCount() throws DatabaseException {
		List<SocMember> memberList = SocManagementDAO.getAllMembers();
		return memberList.size();
	}

}
