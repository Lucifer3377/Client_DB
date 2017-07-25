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

            function deleteRecord(contact, id) {
                if (window.confirm("Are you sure you want to delete the Team member having ID: " + id))
                {
                    var approved = contact;
                    $(window).load("./Leads_Manage_process", {"status": "Delete", "id": approved});
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
            } else if (null != request.getAttribute("lm_resultset")) {

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
                Contact Name
            </th>
            <th>
                Contact No.
            </th>

            <th>
                Assigned To
            </th>
            <th>
                Check In Template
            </th>
            <th></th>
            <th></th>
                <%   lm_rs.beforeFirst();
                    int count = 1;
                    while (lm_rs.next()) {
                        System.out.print(lm_rs.getString(1));
                        String Lead_Name = lm_rs.getString(1);
                        String Lead_Source = lm_rs.getString(2);
                        long Source_Contact = lm_rs.getLong(3);
                        int sno = lm_rs.getInt(4);
                        String Lead_assigned = lm_rs.getString(5);
                        String Lead_Template = lm_rs.getString(6);
                %>

            <tr>                 
                <td id="approved"><%=count%></td>
                <td><input type="text" id="<%=Lead_Name%>" value="<%=Lead_Name%>" readonly style="background: transparent"></td>
                <td><input type="text" id="<%=Lead_Source%>" value="<%=Lead_Source%>" readonly style="background: transparent"></td>
                <td><input type="text" id="<%=Source_Contact%>" value="<%=Source_Contact%>" readonly style="background: transparent"></td>
                <td><select name="assign_to">
                        <option selected><%=Lead_assigned%></option>
                        <%
                            if (tm_rs.next()) {
                                tm_rs.beforeFirst();
                                while (tm_rs.next()) {
                        %><option><%=tm_rs.getString(1)%></option>
                        <%
                                }
                                tm_rs.beforeFirst();
                            }
                        %>


                    </select></td>

                <td><select>
                        <option selected><%=Lead_Template%></option>
                        <option>A</option>
                        <option>B</option>
                        <option>C</option>
                    </select></td>
                <td><button style="color:red" id="<%=count%>">edit</button></td>
                <td align="right"><a href="javascript:deleteRecord(<%=sno%>, <%=count%>);" style="color:red">X</a></td>

               <script type="text/javascript">

            $(document).ready(function () {

                $("#<%=count%>").click(
                        function (e) {
                            $("#<%=Lead_Name%>").prop('readonly', false);
                            $("#<%=Lead_Name%>").css("background","white");
                            $("#<%=Lead_Source%>").prop('readonly', false);
                            $("#<%=Lead_Source%>").css("background","white");
                            $("#<%=Source_Contact%>").prop('readonly', false);
                            $("#<%=Source_Contact%>").css("background","white");
                        });
            });
        </script>
            </tr>

            <%
                        count++;
                    }
                }%>
        </table>
        <div align="center"><button>Save</button></div>

        <%
            } else {
                request.setAttribute("error_message", "No data Recieved...");
                request.getRequestDispatcher("user_home.jsp").forward(request, response);

            }

        %>
        
    </body>
</html>
