<%-- 
    Document   : Leads_Management_Display
    Created on : Jul 24, 2017, 4:14:16 PM
    Author     : sandeep
--%>

<%@page import="com.navimate.biz.objects.DashboardUserObject"%>
<%@page import="com.navimate.biz.objects.AppUserObject"%>
<%@page import="com.navimate.biz.db.BizDbHelper"%>
<%@page import="com.navimate.biz.objects.LeadObject"%>
<%@page import="com.navimate.biz.objects.LeadObject"%>
<%@page import="java.util.ArrayList"%>
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
            } else {

                String status = request.getParameter("status");
                int Team_ID = (Integer) ses.getAttribute("Team_ID");
                switch (status) {
                    case "Delete": {

                    }
                    break;
                }

                ArrayList<AppUserObject> assign_to = null;
                LeadObject lead_object = null;
                String app_user_name = "";
                DashboardUserObject users = BizDbHelper.dashboardUsersTable.GetUserById(Team_ID);
                ArrayList<Integer> leads_from_dash = users.leads;
                if (!leads_from_dash.isEmpty()) {

        %>

        <br><br><br><br><br>
        <div><h3>No records to be displayed...</h3></div>

        <%                } else {

        %>
        <table>
            <th>
                S.No.
            </th>

            <th>
                companyName
            </th>
            <th>
                contactName
            </th>
            <th>
                contactPhone
            </th>
            <th>lead_latitude</th>
            <th>lead_longitude</th>
            <th>
                assignedToId
            </th>
            <th>
                visitFormId
            </th>
            <th></th>
            <th></th>
                <%         int count = 1;
                    for (int id : leads_from_dash) {
                        lead_object = BizDbHelper.leadsTable.GetLeadById(id);


                %>

            <%                String companyName = lead_object.companyName;
                String contactName = lead_object.contactName;
                String contactPhone = lead_object.contactPhone;
                int sno = lead_object.id;
                //String Lead_assigned = lm_rs.getString(5);
                //String Lead_Template = lm_rs.getString(6);
%>

            <tr>                 
                <td id="approved"><%=count%></td>
                <td><input type="text" class="doit" id="companyName__<%=companyName%>__<%=sno%>" value="<%=companyName%>" readonly="readonly" style="background: transparent"></td>
                <td><input type="text" id="contactName__<%=contactName%>__<%=sno%>" value="<%=contactName%>" readonly="readonly" style="background: transparent"></td>
                <td><input type="text" id="contactPhone__<%=contactPhone%>__<%=sno%>" value="<%=contactPhone%>" readonly="readonly" style="background: transparent"></td>
                <td><select id="assignedToId__<%=contactPhone%>__<%=sno%>" name="assign_to">

                        <%
                            assign_to = BizDbHelper.appUsersTable.GetTeamMembers(id);
                        %>
                        <option selected></option>
                        <%
                            for (AppUserObject app : assign_to) {
                                app_user_name = app.name;

                        %>
                        <option><%=app_user_name%></option>
                        <%                                }
                        %>


                    </select></td>

                <td><select id="visitFormId__<%=contactPhone%>__<%=sno%>">
                        <option selected><%=%></option>
                        <option>A</option>
                        <option>B</option>
                        <option>C</option>
                    </select></td>
                <td><button style="color:red" id="<%=count%>">edit</button></td>
                <td align="right"><a href="javascript:deleteRecord(<%=sno%>, <%=count%>);" style="color:red">X</a></td>

            <script type="text/javascript">
                var request;

                $(document).ready(function ()
                {
                    $("#companyName__<%=companyName%>__<%=sno%>,#contactName__<%=contactName%>__<%=sno%>,#contactPhone__<%=contactPhone%>__<%=sno%>").keyup(function ()
                    {
                        $.ajax({
                            url: "table_data_handler",
                            data: {value: $('#' + this.id).val(), id: this.id, },
                            //"sendo=" + $("#id").val(),
                            type: "post",
                            success: function (msg)
                            {
                                $("#lala").html(msg);

                            }
                        });

                    });

                    $("#assignedToId__<%=contactPhone%>__<%=sno%>,#visitFormId__<%=contactPhone%>__<%=sno%>").on("change", function ()
                    {
                        $.ajax({
                            url: "table_data_handler",
                            data: {value: $('#' + this.id).val(), id: this.id, },
                            //"sendo=" + $("#id").val(),
                            type: "post",
                            success: function (msg)
                            {
                                $("#lala").html(msg);

                            }
                        });

                    });


                });

                $(document).ready(function () {

                    $("#<%=count%>").click(
                            function (e) {
                                if ($("#companyName__<%=companyName%>__<%=sno%>").is('[readonly="readonly"]')) {
                                    $("#companyName__<%=companyName%>__<%=sno%>").attr('readonly', false);
                                    $("#companyName__<%=companyName%>__<%=sno%>").css("background", "white");
                                }
                                else {
                                    $("#companyName__<%=companyName%>__<%=sno%>").attr('readonly', true);
                                    $("#companyName__<%=companyName%>__<%=sno%>").css("background", "transparent");
                                }
                                if ($("#contactName__<%=contactName%>__<%=sno%>").is('[readonly="readonly"]')) {
                                    $("#contactName__<%=contactName%>__<%=sno%>").attr('readonly', false);
                                    $("#contactName__<%=contactName%>__<%=sno%>").css("background", "white");
                                }
                                else {
                                    $("#contactName__<%=contactName%>__<%=sno%>").attr('readonly', true);
                                    $("#contactName__<%=contactName%>__<%=sno%>").css("background", "transparent");
                                }
                                if ($("#contactPhone__<%=contactPhone%>__<%=sno%>").is('[readonly="readonly"]')) {
                                    $("#contactPhone__<%=contactPhone%>__<%=sno%>").attr('readonly', false);
                                    $("#contactPhone__<%=contactPhone%>__<%=sno%>").css("background", "white");
                                }
                                else {
                                    $("#contactPhone__<%=contactPhone%>__<%=sno%>").attr('readonly', true);
                                    $("#contactPhone__<%=contactPhone%>__<%=sno%>").css("background", "transparent");
                                }
                            });
                });
            </script>
        </tr>

        <%

                }

            }%>
    </table>
    <div align="center"><button onclick="window.location.href='Leads_Manage_process?status=Save'">Save</button></div>

    <%
        }


    %>

</body>
</html>
