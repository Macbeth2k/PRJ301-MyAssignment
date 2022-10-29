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
import model.Group;
import model.Lecture;
import model.Session;
import model.Student;
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

    public Session get(String email) {
        try {
            String sql = "SELECT st.email\n"
                    + "	  ,st.pass\n"
                    + "	  ,st.username\n"
                    + "	  ,st.avatar\n"
                    + "	  ,[gname] as [group]\n"
                    + "      ,s.[semester]\n"
                    + "      ,s.[scode]\n"
                    + "	  ,g.lemail\n"
                    + "	  ,l.pass as lpass\n"
                    + "	  ,l.username as lusername\n"
                    + "	  ,l.avatar as lavatar\n"
                    + "      ,[serial]\n"
                    + "      ,[date]\n"
                    + "      ,[room]\n"
                    + "      ,[slot]\n"
                    + "      ,[attended]\n"
                    + "  FROM [dbo].[Session] s left join [Group] g\n"
                    + "  on s.gname = g.name and s.semester = g.semester and s.scode = g.scode\n"
                    + "  left join Student st \n"
                    + "  on g.semail = st.email\n"
                    + "  left join Lecture l \n"
                    + "  on g.lemail = l.email\n"
                    + "  where st.email = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int serial = rs.getInt("serial");
                Group g = new Group();
                g.setName(rs.getString("group"));
                g.setSemester(rs.getString("semester"));
                g.setScode(rs.getString("scode"));
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
    public Session get(Session model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
