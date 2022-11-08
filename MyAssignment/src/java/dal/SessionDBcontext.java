/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dao.DateDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Session;

/**
 *
 * @author LENOVO
 */
public class SessionDBcontext extends DBContext<Session> {

    @Override
    public void insert(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Session model) {
        
        
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public ArrayList<Session> lists(String email) { // error
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(String key) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Session get(String gname, String semester, String scode, int serial) {
        SubjectDBContext sdb = new SubjectDBContext();
        TimeSlotDBContext tdb = new TimeSlotDBContext();
        RoomDBConext rdb = new RoomDBConext();
        DateDAO d = new DateDAO();
        try {
            String sql = "SELECT [gname]\n"
                    + "      ,[semester]\n"
                    + "      ,[scode]\n"
                    + "      ,[serial]\n"
                    + "      ,[date]\n"
                    + "      ,[slot]\n"
                    + "      ,[room]\n"
                    + "      ,[attended]\n"
                    + "  FROM [dbo].[Session]\n"
                    + "  where gname = ? and semester = ? and scode = ? and serial = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, gname);
            stm.setString(2, semester);
            stm.setString(3, scode);
            stm.setInt(4, serial);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                Session s = new Session();
                s.setSerial(serial);
                s.setSubject(sdb.get(scode));
                s.setTimeslot(tdb.get(rs.getInt("slot")));
                s.setRoom(rdb.get(rs.getString("room")));
                s.setDate(d.getDateWithoutTimeUsingFormat(rs.getDate("date")));
                s.setAttended(rs.getBoolean("attended"));
                return s;
            }
        } catch (SQLException ex) {
            System.out.println("Error at session database, get");
        }
        return null;
    }

    public ArrayList<Session> list(String gname, String semester, String scode) {
        ArrayList<Session> sessions = new ArrayList<>();
        SubjectDBContext sdb = new SubjectDBContext();
        TimeSlotDBContext tdb = new TimeSlotDBContext();
        RoomDBConext rdb = new RoomDBConext();
        DateDAO d = new DateDAO();
        try {
            String sql = "SELECT [gname]\n"
                    + "      ,[semester]\n"
                    + "      ,[scode]\n"
                    + "      ,[serial]\n"
                    + "      ,[date]\n"
                    + "      ,[slot]\n"
                    + "      ,[room]\n"
                    + "      ,[attended]\n"
                    + "  FROM [dbo].[Session]\n"
                    + "  where gname = ? and semester = ? and scode = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, gname);
            stm.setString(2, semester);
            stm.setString(3, scode);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session s = new Session();
                s.setSerial(rs.getInt("serial"));
                s.setSubject(sdb.get(scode));
                s.setTimeslot(tdb.get(rs.getInt("slot")));
                s.setRoom(rdb.get(rs.getString("room")));
                s.setDate(d.getDateWithoutTimeUsingFormat(rs.getDate("date")));
                s.setAttended(rs.getBoolean("attended"));
                sessions.add(s);
            }
        } catch (SQLException ex) {
            System.out.println("Error at session database,list");
        }
        return sessions;
    }
    
    public void update(String gname, String semester, String scode, int serial, boolean attended) {
        try {
            String sql = "UPDATE [dbo].[Session]\n"
                    + "   SET [attended] = ?\n"
                    + " WHERE gname = ? and semester = ? and scode = ? and serial = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setBoolean(1, attended);
            stm.setString(2, gname);
            stm.setString(3, semester);
            stm.setString(4, scode);
            stm.setInt(5, serial);
            stm.executeUpdate();
        } catch (SQLException ex) {
            System.out.println("Error at session database, update");
        }
    }
    
}
