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
import model.Attendance;
import model.Group;
import model.Room;
import model.Session;
import model.Student;
import model.Subject;
import model.TimeSlot;

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

    public ArrayList<Session> lists(String email, java.sql.Date from, java.sql.Date to) {
        ArrayList<Session> sessions = new ArrayList<>();
        SubjectDBContext sdb = new SubjectDBContext();
        TimeSlotDBContext tdb = new TimeSlotDBContext();
        RoomDBConext rdb = new RoomDBConext();
        StudentDBContext stdb = new StudentDBContext();
        try {
            String sql = "SELECT s.[gname]\n"
                    + "      ,s.[semester]\n"
                    + "      ,s.[scode]\n"
                    + "      ,s.[serial]\n"
                    + "      ,[date]\n"
                    + "      ,[slot]\n"
                    + "      ,[room]\n"
                    + "      ,[attended]\n"
                    + "	  ,a.semail\n"
                    + "   ,a.present\n"
                    + "  FROM [dbo].[Session] s left join Attendance a\n"
                    + "  on s.gname = a.gname and s.semester = a.semester and s.scode = a.scode and s.serial = a.serial\n"
                    + "  where a.semail = ? and date >= ? and date <= ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setDate(2, from);
            stm.setDate(3, to);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Session s =new Session();
                int serial = rs.getInt("serial");
                Subject su = new Subject();
                String scode = rs.getString("scode");
                su = sdb.get(scode);
                TimeSlot t = new TimeSlot();
                t = tdb.get(rs.getInt("slot"));
                Room r = new Room();
                r = rdb.get(rs.getString("room"));
                java.sql.Date date = rs.getDate("date");
                boolean attended = rs.getBoolean("attended");
                Attendance a = new Attendance();
                Student st = new Student();
                st = stdb.get(rs.getString("semail"));
                boolean present = rs.getBoolean("present");
                a.setStudent(st);
                a.setPresent(present);
                a.setDescription(scode);
                Group g = new Group();
                g.setName(rs.getString("gname"));
                
                s.setSerial(serial);
                s.setSubject(su);
                s.setTimeslot(t);
                s.setRoom(r);
                s.setDate(date);
                s.setAttended(attended);
                s.setAttendances(a);
                s.setGroup(g);
                a.setSession(s);
                
                sessions.add(s);
            }
        } catch (SQLException ex) {
            System.out.println("Error at session database, getlist");
        }
        return sessions;
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
