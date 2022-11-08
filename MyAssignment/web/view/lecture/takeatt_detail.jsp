<%-- 
    Document   : listgroup
    Created on : Nov 7, 2022, 4:33:53 AM
    Author     : LENOVO
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Take Attendance_Detail</title>
    </head>
    <body>
        <form action="takeatt_detail" method="post">
            <input type="hidden" name="gname" value="${requestScope.name}"/>
            <input type="hidden" name="semester" value="${requestScope.semester}"/>
            <input type="hidden" name="scode" value="${requestScope.scode}"/>
            <input type="hidden" name="serial" value="${requestScope.serial}"/>
            <table border="1">
                <tr>
                    <td>Serial</td>
                    <td>Group</td>
                    <td>Name</td>
                    <td>Avatar</td>
                    <td>Take</td>
                    <td>Description</td>
                </tr>
                <c:set var="count" value="0"/>
                <c:forEach items="${requestScope.attendances}" var="a">
                    <tr>
                    <input type="hidden" value="${a.student.email}" name="email"/>
                    <td>${count+1}</td>
                    <td>${requestScope.name}</td>
                    <td>${a.student.username}</td>
                    <td>${a.student.avatar}</td>
                    <td>

                        <input type="radio" name="present${a.student.email}" value="true"
                               <c:if test="${a.present eq true}">
                                   checked="checked"
                               </c:if>       
                               > present
                        <input type="radio" name="present${a.student.email}" value="false"
                               <c:if test="${a.present ne true}">
                                   checked="checked"
                               </c:if> 
                               > absent 
                    </td>
                    <td>
                        <input type="text" name="description${a.student.email}" value="${a.description}">
                    </td>
                    </tr>

                </c:forEach>
            </table>
            <input type="submit" value="save">
        </form>
    </body>
</html>
