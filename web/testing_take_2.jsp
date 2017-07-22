<%-- 
    Document   : testing_take_2
    Created on : Jul 22, 2017, 11:07:43 AM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href="javascript:countries.cycleit('prev')" style="margin-right: 280px; text-decoration:none"><img src="../roundleft.gif" border="0" /> Back</a>  <a href="javascript:countries.cycleit('next')" style="text-decoration:none"><img src="../roundright.gif" border="0" /> Forward</a>
    <ul id="countrytabs" class="shadetabs">
        <li><a href="footer_pane.jsp" rel="countrycontainer" class="selected">Tab 1</a></li>
        <li><a href="content_panes.jsp" rel="countrycontainer" id="favorite">Tab 2</a></li>
        <li><a href="Navimate_home.jsp" rel="countrycontainer">Tab 3</a></li>
        <li><a href="external4.htm" rel="countrycontainer">Tab 4</a></li>
    </ul>

    <div id="countrydivcontainer" style="border:1px solid gray; width:450px; margin-bottom: 1em; padding: 10px">
    </div>

    <script type="text/javascript">

        var countries = new ddajaxtabs("countrytabs", "countrydivcontainer")
        countries.setpersist(true)
        countries.setselectedClassTarget("link") //"link" or "linkparent"
        countries.init()

    </script>
</body>
</html>
