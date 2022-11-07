/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.lecture;

import dal.AttendanceDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Attendance;

/**
 *
 * @author LENOVO
 */
public class TakeAtt_detail extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        if (a == null) {
            request.getRequestDispatcher("login").forward(request, response);
        } else {
            if (a.getRole().equals("lecture") || a.getRole().equals("staff")) {
                String name = request.getParameter("gname");
                String semester = request.getParameter("semester");
                String scode = request.getParameter("scode");
                int serial = Integer.parseInt(request.getParameter("serial"));

                AttendanceDBContext adb = new AttendanceDBContext();
                ArrayList<Attendance> attendances = adb.getList(name, semester, scode, serial);

                request.setAttribute("name", name);
                request.setAttribute("attendances", attendances);
                request.getRequestDispatcher("view/lecture/takeatt_detail.jsp").forward(request, response);
            }else{
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
            
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
