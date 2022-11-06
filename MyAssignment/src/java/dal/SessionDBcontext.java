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
import model.Group;
import model.Lecture;
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
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public ArrayList<Session> lists(String email) {
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
                    + "  FROM [dbo].[Session] s\n"
                    + "  left join Attendance a \n"
                    + "  on s.gname = a.gname and s.semester = a.semester and s.scode = a.scode and s.serial = a.serial\n"
                    + "  where a.semail = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int serial = rs.getInt("serial");
                Group g = new Group();
                g.setName(rs.getString("group"));
                g.setSemester(rs.getString("semester"));

                Lecture l = new Lecture();
                l.setEmail(rs.getString("lemail"));
                l.setUsername(rs.getString("lusername"));
                l.setAvatar(rs.getString("lavatar"));
                Student s = new Student();
                s.setEmail(rs.getString("email"));
                s.setUsername(rs.getString("username"));
                s.setAvatar(rs.getString("avatar"));
                TimeSlot t = new TimeSlot();

                Session ss = new Session();

            }
            return null;
        } catch (SQLException ex) {
            Logger.getLogger(SessionDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public ArrayList<Session> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Session get(String key) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Session get(int serial, String scode, String gname, String semester) {
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
            Logger.getLogger(SessionDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
