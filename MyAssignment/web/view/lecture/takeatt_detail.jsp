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
        <title>JSP Page</title>
    </head>
    <body>
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
                    <td>${count+1}</td>
                    <td>${requestScope.name}</td>
                    <td>${a.student.username}</td>
                    <td>${a.student.avatar}</td>
                    <td>
                        <input type="radio" name="present" value="present"> present
                        <input type="radio" name="present" value="absent"> absent 
                    </td>
                    <td>
                        <input type="text" name="description" value="${a.description}">
                    </td>
                </tr>
                
            </c:forEach>
        </table>
            <<form action="takeatt_detail" method="post">
                <input type="submit" value="save">
            </form>
    </body>
</html>
