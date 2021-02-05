package dao;

import java.sql.*;
import java.util.*;
import dbutil.DBUtil;
import entity.SocMember;

public class SocManagementDAO {
	

	public static List<SocMember> getAllMembers()
	{
		List<SocMember> memberList = new ArrayList<SocMember>();
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM society");
			while(rs.next())
			{
				SocMember member = new SocMember(rs.getString("Flat_no"),rs.getString("Member_Name"),rs.getString("Owner_or_Tenant"),rs.getInt("Maintenance"));
				memberList.add(member);
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return memberList;
	}
	
	
	public static SocMember getMemberByFlatNo(String flatNo)
	{
		SocMember member = null;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM society WHERE Flat_no = ?");
			ps.setString(1, flatNo);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				member = new SocMember(rs.getString("Flat_no"),rs.getString("Member_Name"),rs.getString("Owner_or_Tenant"),rs.getInt("Maintenance"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return member;
	}
	
	
	public static int addMember(SocMember member)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO society VALUES(?,?,?,?)");
			ps.setString(1, member.getFlatNo());
			ps.setString(2, member.getMemberName());
			ps.setString(3, member.getOwnership());
			ps.setInt(4, member.getMaintenance());
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int updateMember(SocMember member)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE society SET Member_Name=?, Owner_or_Tenant=?, Maintenance=? WHERE Flat_no=?");
			ps.setString(1, member.getMemberName());
			ps.setString(2, member.getOwnership());
			ps.setInt(3, member.getMaintenance());
			ps.setString(4, member.getFlatNo());
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int deleteMember(String flatNo)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("DELETE FROM society where Flat_no = ?");
			ps.setString(1, flatNo);
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
//	public static void main(String[] args) {
//		SocMember memberInfo = new SocMember("107","pramod","tenant",1400);
//  		SocManagementDAO.addMember(memberInfo);
//	}
}
