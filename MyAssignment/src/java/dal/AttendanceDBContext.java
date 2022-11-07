/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;

/**
 *
 * @author LENOVO
 */
public class AttendanceDBContext extends DBContext<Attendance> {

    @Override
    public void insert(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attendance get(String key) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attendance> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Attendance get() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public ArrayList<Attendance> getList(String email) {
        try {
            ArrayList<Attendance> attendances = new ArrayList<>();
            String sql = "SELECT [serial]\n"
                    + "      ,[gname]\n"
                    + "      ,[semester]\n"
                    + "      ,[scode]\n"
                    + "      ,[semail]\n"
                    + "      ,[present]\n"
                    + "      ,[description]\n"
                    + "  FROM [dbo].[Attendance]\n"
                    + "  where semail = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            StudentDBContext sdb = new StudentDBContext();
            SessionDBcontext ssdb = new SessionDBcontext();
            while (rs.next()) {
                Attendance a = new Attendance();
                a.setStudent(sdb.get(email));
                a.setPresent(rs.getBoolean("present"));
                a.setDescription(rs.getString("description"));
                attendances.add(a);
            }
            return attendances;
        } catch (SQLException ex) {
            System.out.println("error at attendance database, list by email");
        }
        return null;
    }

    public ArrayList<Attendance> getList(String gname, String semester, String scode, int serial) {
        ArrayList<Attendance> attendances = new ArrayList<>();
        StudentDBContext sdb = new StudentDBContext();
        try {
            String sql = "SELECT [serial]\n"
                    + "      ,[gname]\n"
                    + "      ,[semester]\n"
                    + "      ,[scode]\n"
                    + "      ,[semail]\n"
                    + "      ,[present]\n"
                    + "      ,[description]\n"
                    + "  FROM [dbo].[Attendance]\n"
                    + "  where serial = ? and gname = ? and semester = ? and scode = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, serial);
            stm.setString(2, gname);
            stm.setString(3, semester);
            stm.setString(4, scode);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                Attendance a = new Attendance();
                a.setStudent(sdb.get(rs.getString("semail")));
                a.setPresent(rs.getBoolean("present"));
                a.setDescription(rs.getString("description"));
                attendances.add(a);
            }
        } catch (SQLException ex) {
            System.out.println("error at attendance database, list by group");
        }
        return attendances;
    }
}
