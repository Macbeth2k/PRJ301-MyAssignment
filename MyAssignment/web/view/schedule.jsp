<%-- 
    Document   : schedule
    Created on : Oct 28, 2022, 11:47:17 PM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:useBean id="da" class="dao.DateDAO" scope="request"></jsp:useBean>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Schedule</title>
        </head>
        <body>
        <c:if test="${sessionScope.account eq null}">
            <a href="login">Login </a>
        </c:if>

        <c:if test="${sessionScope.account ne null}">
            <form action="schedule" method="POST">
                From <input type="date" name="from" value="${requestScope.week.from}"> 
                To <input type="date" name="to" value="${requestScope.week.to}"> 
            </form>
                ${requestScope.times}
            <table border="1">
                <thead>
                    <tr>
                        <td colspan="2">
                            <form action="schedule" method="POST">
                                <input type="submit" name="shift" value="last week">
                                <input type="hidden" name="times" value="${requestScope.times-1}">
                            </form>
                        </td> 
                        <td colspan="4"></td>
                        <td colspan="2">
                            <form action="schedule" method="POST">
                                <input type="submit" name="shift" value="next week">
                                <input type="hidden" name="times" value="${requestScope.times+1}">
                            </form>
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <c:forEach items="${requestScope.dateformat}" var="d">
                            <td>${d.day} <br> ${d.date}</td>
                            </c:forEach>

                    </tr>

                </thead>
                <tbody>
                    <c:forEach items="${requestScope.slots}" var="s">
                        <tr>
                            <td>slot ${s.slot} <br> ${s.description}</td>
                                <c:forEach items="${requestScope.week.dates}" var="d">
                                    <c:set var="flag" value="false" />  
                                    <c:forEach items="${requestScope.attendances}" var="a">
                                        <c:choose>
                                            <c:when test="${(da.isDateEqual(d,a.session.date) == 0) and (s.slot == a.session.timeslot.slot)}">
                                                <c:set var="flag" value="true" />
                                            </c:when>
                                            <c:otherwise>
                                                 
                                            </c:otherwise>
                                        </c:choose>         
                                    </c:forEach>
                                 
                                <c:if test="${flag eq false}">
                                    <td></td>
                                </c:if>  
                                <c:if test="${flag eq true}">
                                    <td>lum</td>
                                    <c:set var="flag" value="false" /> 
                                </c:if>
                                  


                            </c:forEach>

                        </tr>
                    </c:forEach>
                </tbody>

            </table>
        </c:if>    

    </body>
</html>
