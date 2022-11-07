/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dao.GroupDAO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Group;
import model.Student;

/**
 *
 * @author LENOVO
 */
public class GroupDBContext extends DBContext<Group> {

    @Override
    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Group> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Group get(String email) {
        return null;
    }

    public ArrayList<Group> list(String email, String semester) {
        ArrayList<Group> groups = new ArrayList<>();
        SubjectDBContext sdb = new SubjectDBContext();
        LectureDBcontext ldb = new LectureDBcontext();
        try {
            String sql = "SELECT [name]\n"
                    + "      ,[semester]\n"
                    + "      ,[scode]\n"
                    + "      ,[lemail]\n"
                    + "  FROM [dbo].[Group]\n"
                    + "  where lemail = ? and semester = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, semester);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Group g = new Group();
                g.setName(rs.getString("name"));
                g.setSemester(rs.getString("semester"));
                g.setSubject(sdb.get(rs.getString("scode")));
                g.setLecture(ldb.get(rs.getString("lemail")));
                groups.add(g);
            }
        } catch (SQLException ex) {
            System.out.println("Error at group database, list");
        }
        return groups;
    }

    public Group get(String name, String semester, String scode) {
        SubjectDBContext sdb = new SubjectDBContext();
        LectureDBcontext ldb = new LectureDBcontext();
        try {
            String sql = "SELECT [name]\n"
                    + "      ,[semester]\n"
                    + "      ,[scode]\n"
                    + "      ,[lemail]\n"
                    + "  FROM [dbo].[Group]\n"
                    + "  where name = ? and semester = ? and scode = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, name);
            stm.setString(2, semester);
            stm.setString(3, scode);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                Group g = new Group();
                g.setName(name);
                g.setSemester(semester);
                g.setSubject(sdb.get(scode));
                g.setLecture(ldb.get(rs.getString("lemail")));
                return g;
            }
        } catch (SQLException ex) {
            System.out.println("Error at group database, get");
        }
        return null;
    }
}
