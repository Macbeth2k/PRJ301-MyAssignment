/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.lecture;

import dal.GroupDBContext;
import dal.SessionDBcontext;
import dao.DateDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Group;
import model.Session;

/**
 *
 * @author LENOVO
 */
public class TakeAtt extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        if (a == null) {
            request.getRequestDispatcher("login").forward(request, response);
        } else {
            if (a.getRole().equals("lecture") || a.getRole().equals("staff")) {
                DateDAO d = new DateDAO();
                GroupDBContext gdb = new GroupDBContext();
                String semester = d.getSemester();
                ArrayList<Group> groups = gdb.list(a.getEmail(), semester);
                request.setAttribute("groups", groups);
                request.getRequestDispatcher("view/lecture/takeatt.jsp").forward(request, response);
            } else {
                response.sendRedirect("home");
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        if (a == null) {
            request.getRequestDispatcher("login").forward(request, response);
        } else {
            if (a.getRole().equals("lecture") || a.getRole().equals("staff")) {
                String name = request.getParameter("name");
                String semester = request.getParameter("semester");
                String scode = request.getParameter("scode");
                String status = request.getParameter("status");

                SessionDBcontext sdb = new SessionDBcontext();
                GroupDBContext gdb = new GroupDBContext();
                Group g = gdb.get(name, semester, scode);
                ArrayList<Session> sessions = sdb.list(name, semester, scode);
                ArrayList<Group> groups = gdb.list(a.getEmail(), semester);

                if (status.equals("show")) {
                    request.setAttribute("groups", groups);
                    request.setAttribute("name", name);
                    request.setAttribute("semester", semester);
                    request.setAttribute("scode", scode);
                    request.setAttribute("gr", g);
                    request.setAttribute("sessions", sessions);
                } else {
                    request.setAttribute("groups", groups);
                }

                request.getRequestDispatcher("view/lecture/takeatt.jsp").forward(request, response);
            } else {
                response.sendRedirect("home");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
