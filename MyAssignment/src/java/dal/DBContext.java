/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author LENOVO
 * @param <T>
 */
public abstract class DBContext<T> {
    protected Connection connection;
    public DBContext()
    {
        try {
            String user = "sa";
            String pass = "123";
            String database = "test2";
            String url = "jdbc:sqlserver://THINKPADE15-DUC\\SQLEXPRESS:1433;databaseName="+database;
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public abstract void insert(T model); //INSERT INTO
    public abstract void update(T model); // UPDATE SET
    public abstract void delete(T model); // DELETE FROM 
    public abstract T get(T model); // SELECT * FROM WHERE id = 
    public abstract ArrayList<T> list(); //override SELECT * FROM
}