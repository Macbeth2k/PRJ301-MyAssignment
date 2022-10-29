<%-- 
    Document   : schedule
    Created on : Oct 28, 2022, 11:47:17 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Schedule</title>
    </head>
    <body>
        <<form action="schedule" method="POST">
            <input type="text" name="email" value="">
            <<!--<input type="date" name="from" value="">
            <input type="date" name="to" value=""> -->
        </form>

        <table border="1">
            <thead>
                <tr>
                    <td colspan="2">
                        <<form action="schedule">
                            <input type="submit" value="<----">
                        </form>
                    </td> 
                    <td colspan="4"></td>
                    <td>
                        <<form action="schedule">
                            <input type="submit" value="---->">
                        </form>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>Monday</td>
                    <td>Tuesday</td>
                    <td>Wednesday</td>
                    <td>Thursday</td>
                    <td>Friday</td>
                    <td>Saturday</td>
                    <td>Sunday</td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Slot 1</td>
                    <td>Monday</td>
                    <td>Tuesday</td>
                    <td>Wednesday</td>
                    <td>Thursday</td>
                    <td>Friday</td>
                    <td>Saturday</td>
                    <td>Sunday</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
