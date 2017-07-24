<%-- 
    Document   : Leads_Management_Display
    Created on : Jul 24, 2017, 4:14:16 PM
    Author     : sandeep
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <script>
            function doOnClick(sno) {
                if (window.confirm("Are you Sure you want to Approve the Team Member..?"))
                {
                    var approved = sno;
                    alert("Approving Team Member Having Sno as: " + approved);
                    $(window).load("./Team_Manage_Process", {"status": "Active", "id": approved});
                    location.reload(true);
                    // window.load("Team_Manage_Display.jsp");

                }
            }
        </script>
        <%
            HttpSession ses = request.getSession(false);
            if (ses.getAttribute("name") == null || ses.getAttribute("name").equals("")) {
                request.setAttribute("error_message", "Login First");
                request.getRequestDispatcher("Navimate_home.jsp").forward(request, response);
            } else if (null != request.getAttribute("resultset")) {

                ResultSet tm_rs = (ResultSet) request.getAttribute("tm_resultset");
                ResultSet lm_rs = (ResultSet) request.getAttribute("lm_resultset");

        %>
        <br><br><br><br><br>


        <%                if (!lm_rs.next()) {

        %>
        <div><h3>No records to be displayed...</h3></div>
        <%                } else {

        %>
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
                Contact Phone No
            </th>
            <th>
                Assigned To
            </th>
            <th>
                Check In Template
            </th>
            <th></th>
                <%   lm_rs.beforeFirst();
                    int count = 1;
                    while (lm_rs.next()) {

                        String Lead_Name = lm_rs.getString(1);
                        String Lead_Source = lm_rs.getString(2);
                        long Source_Contact = lm_rs.getLong(3);

                %>

            <tr>                 
                <td id="approved"><%=count%></td>
                <td><%=Lead_Name%></td>
                <td><%=Lead_Source%></td>
                <td><select name="assign_to">
                        <option selected disabled></option>
                        <%
                            while (tm_rs.next()) {
                        %><option><%=tm_rs.getString(0)%></option>
                        <%
                            }
                            tm_rs.beforeFirst();
                        %>
                    </select></td>
                <td><a href="javascript:doOnClick();">X</a></td>

            </tr>

            <%
                        count++;
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
