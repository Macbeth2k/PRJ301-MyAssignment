/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.AttendanceDBContext;
import dal.TimeSlotDBContext;
import dao.DateDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import model.Account;
import model.Attendance;
import model.DateFormat;
import model.TimeSlot;
import model.Week;

/**
 *
 * @author LENOVO
 */
public class Schedule extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account a = (Account) session.getAttribute("account");
        if (a == null) {
            request.getRequestDispatcher("login").forward(request, response);
        } else {
            DateDAO d = new DateDAO();
            ArrayList<DateFormat> df = d.getCurrentDatesFormat();
            int times = 0;
            Week w = new Week(d.getDateOfCurrentWeek());
            request.setAttribute("week", w);
            request.setAttribute("times", times);
            request.setAttribute("dateformat", df);

            //response.getWriter().println(a.getEmail());
            AttendanceDBContext adb = new AttendanceDBContext();
            ArrayList<Attendance> attendances = adb.getList(a.getEmail());
            request.setAttribute("attendances", attendances);

            TimeSlotDBContext tdb = new TimeSlotDBContext();
            ArrayList<TimeSlot> slots = tdb.list();
            request.setAttribute("slots", slots);

            request.getRequestDispatcher("view/schedule.jsp").forward(request, response);
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
            String shift = request.getParameter("shift");
            int times = Integer.parseInt(request.getParameter("times"));
            DateDAO d = new DateDAO();
            ArrayList<DateFormat> df;
            Week w;
            if (shift.equals("last week")) {
                df = d.getLastDatesFormat(times);
                w = new Week(d.getDatesOfLastWeek(times));
            } else {
                df = d.getNextDatesFormat(times);
                w = new Week(d.getDateOfNextWeek(times));
            }
            request.setAttribute("week", w);
            request.setAttribute("times", times);
            request.setAttribute("dateformat", df);

            AttendanceDBContext adb = new AttendanceDBContext();
            ArrayList<Attendance> attendances = adb.getList(a.getEmail());
            request.setAttribute("attendances", attendances);

            TimeSlotDBContext tdb = new TimeSlotDBContext();
            ArrayList<TimeSlot> slots = tdb.list();
            request.setAttribute("slots", slots);

            request.getRequestDispatcher("view/schedule.jsp").forward(request, response);
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
