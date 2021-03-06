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

        <script>
            function doOnClick(contact, id) {
                if (window.confirm("Are you Sure you want to Approve the Team Member..?"))
                {
                    var approved = contact;
                    alert("Approving Team Member Having Sno as: " + id);
                    $(window).load("./Team_Manage_Process", {"status": "Active", "id": approved});
                    location.reload(true);
                    // window.load("Team_Manage_Display.jsp");

                }
            }

            function deleteRecord(contact, id) {
                if (window.confirm("Are you sure you want to delete the Team member having ID: " + id))
                {
                    var approved = contact;                   
                    $(window).load("./Team_Manage_Process", {"status": "Delete", "id": approved});
                    location.reload(true);
                    //window.load("Team_Manage_Display.jsp");

                }
            }

        </script>
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
                int count = 1;
                while (rs.next()) {
                    String Name = rs.getString(1);
                    long contact = rs.getLong(2);
                    String status = rs.getString(3);

            %>

            <tr>                 
                <td id="approved"><%=count%></td>
                <td><%=Name%></td>
                <td><%=contact%></td>

                <%if (status.equals("Pending")) {
                        status = "Approve";
                %>
                <td><a href="javascript:doOnClick(<%=contact%>, <%=count%>);"><%=status%></a></td>
                    <%} else {%>
                <td><%=status%></td>
                <%}%>
                <td><a href="javascript:deleteRecord(<%=contact%>, <%=count%>);" style="color:red">X</a></td>
            </tr>

            <%count++;
                    }
                }%>
        </table>

        <%
            } else {
                request.setAttribute("error_message", "No data Recieved...");
                request.getRequestDispatcher("user_home.jsp").forward(request, response);

            }

        %>
    </body>
</html>
