<%-- 
    Document   : takeatt
    Created on : Oct 28, 2022, 11:47:39 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Take Attendance</title>
    </head>
    <body>
        <table border="1">
            <tr>
                <td>Name</td>
                <td>Subject</td>
                <td></td>
            </tr>
            <c:forEach items="${requestScope.groups}" var="g">
                <tr>
                    <td>${g.name}</td>
                    <td>${g.subject.scode}</td>
                    <td>${g.semester}</td>
                    <td>

                        <form action="takeatt" method="post">
                            <input type="hidden" name="name" value="${g.name}">
                            <input type="hidden" name="semester" value="${g.semester}">
                            <input type="hidden" name="scode" value="${g.subject.scode}">
                            <input type="submit" value="show">
                        </form>                           


                        <form action="takeatt" method="post">      
                            <input type="hidden" name="name" value="${g.name}">
                            <input type="hidden" name="semester" value="${g.semester}">
                            <input type="hidden" name="scode" value="${g.subject.scode}">
                            <input type="submit" value="hide">
                        </form>                          

                    </td>
                </tr>
            </c:forEach>
        </table>

        <c:if test="${requestScope.sessions ne null}">
            <table border="1">
                <tr>
                    <td>Serial</td>
                    <td>Name</td>
                    <td>Slot</td>
                    <td>Room</td>
                    <td>Date</td>
                    <td></td>
                </tr>
                <c:forEach items="${requestScope.sessions}" var="s">
                    <tr>
                        <td>${s.serial}</td>
                        <td>${gr.name}</td>
                        <td>${s.timeslot.slot}</td>
                        <td>${s.room.room}</td>
                        <td>${s.date}</td>
                        <c:if test="${s.attended eq true}">
                            <td>finished</td>
                        </c:if>
                        <c:if test="${s.attended eq false}">
                            <td>
                                <form action="takeatt_detail" method="get">
                                    <input type="hidden" name="gname" value="${gr.name}"/>
                                    <input type="hidden" name="semester" value="${gr.semester}"/>
                                    <input type="hidden" name="scode" value="${s.subject.scode}"/>
                                    <input type="hidden" name="serial" value="${s.serial}"/>
                                    <input type="submit" value="take"/>
                                </form>
                            </td>
                        </c:if>    
                    </tr>

                </c:forEach>
            </table>
        </c:if>

    </body>
</html>
