<%-- 
    Document   : Team_Manage_Display
    Created on : 23 Jul, 2017, 5:02:33 PM
    Author     : Sai_Kameswari

//if error occurs add MYSQL Library
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="com.nvmate.Helper.DBHelper"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Team-Manage</title>

    </head>
    <body>        
        <%
            HttpSession ses = request.getSession(false);
            if (ses.getAttribute("name") == null || ses.getAttribute("name").equals("")) {
                request.setAttribute("error_message", "Login First");
                request.getRequestDispatcher("Navimate_home.jsp").forward(request, response);
            } else if (null != request.getAttribute("resultset")) {

                ResultSet rs = (ResultSet) request.getAttribute("resultset");

        %>
        <br><br><br><br><br>
        <table>
            <th>
                S.No.
            </th>

            <th>
                Name
            </th>

            <th>
                Contact No.
            </th>

            <th>
                Status
            </th>
            <%                if (!rs.next()) {

            %>
            <div><h3>No records to be displayed...</h3></div>
            <%                } else {
                rs.beforeFirst();

                while (rs.next()) {
                    int Sno = rs.getInt(1);
                    String Name = rs.getString(2);
                    long contact = rs.getLong(3);
                    String status = rs.getString(4);
            %>

            <tr>                 
                <td><%=Sno%></td>
                <td><%=Name%></td>
                <td><%=contact%></td>
                <td><%=status%></td>
            </tr>

            <%}
                }%>
        </table>

        <%
            } else {
                request.setAttribute("error_message", "No data Recieved...");
                request.getRequestDispatcher("user_home.jsp").forward(request, response);

            }

        %>

</html>
