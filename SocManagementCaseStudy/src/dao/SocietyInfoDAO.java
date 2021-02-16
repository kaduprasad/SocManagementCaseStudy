package dao;

import dbutil.DBUtil;
import entity.Society;
import exceptions.databaseExceptions.DatabaseConnectException;
import exceptions.databaseExceptions.DatabaseException;
import org.apache.log4j.Logger;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SocietyInfoDAO {
    public final static Logger logger = Logger.getLogger(DBUtil.class.getName());

    public static List<Society> getAllSocietyInfo() throws DatabaseException {
        List<Society> societyList = new ArrayList<>();
        try {

            Connection conn = DBUtil.getConnection();
            Statement st= conn.createStatement();
            ResultSet rs= st.executeQuery("SELECT * FROM soc_info");
            while(rs.next()) {

                Society society = new Society(rs.getString(1),rs.getString(2),rs.getString(3));
                societyList.add(society);
            }
            logger.debug("Fetch and Display all Society");
            DBUtil.closeConnection(conn);
        }
        catch(Exception e) {
            logger.error("Error in Showing SocietyInfo ",e);
            throw new DatabaseException("Cannot fetch SocInfo from database","03",e);
        }
        return societyList;
    }



    public static int updateSociety(Society society) throws DatabaseException {
        int status = 0;
        try {
            Connection conn = DBUtil.getConnection();
            PreparedStatement ps= conn.prepareStatement("UPDATE soc_info SET societyName=?, societyAddress=?, city=? WHERE societyName=?");
            ps.setString(1, society.getSocName());
            ps.setString(2, society.getAddress());
            ps.setString(3, society.getCity());
            ps.setString(4, society.getSocName());
            status = ps.executeUpdate();
            logger.debug("Updated Society successfully and stored in database "+society.getSocName());

        }
        catch(SQLException | DatabaseConnectException e) {
            logger.error("Error in updating Society ",e);
            throw new DatabaseException("Unable edit SocietyInfo from database","02",e);
        }
        return status;
    }

    public static Society getSocietyBySocName(String socName) throws DatabaseException {
        Society society = null;
        try {
            Connection conn = DBUtil.getConnection();
            PreparedStatement ps= conn.prepareStatement("SELECT * FROM soc_info WHERE societyName = ?");
            ps.setString(1, socName);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {

                society = new Society(rs.getString(1),rs.getString(2),rs.getString(3));
            }
            logger.debug("Member info fetched of flat "+society.getSocName());

        }
        catch(Exception e) {

            logger.error("Error in getting SocInfo for Editing ",e);
            throw new DatabaseException("Error in getting society from database",e);
        }
        return society;
    }
}
