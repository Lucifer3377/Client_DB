<%-- 
    Document   : login_home
    Created on : Jun 25, 2017, 3:50:43 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navimate</title>
        <link id="favicon" rel="shortcut icon" href="images/appicon.png" type="image/png">
        <script type="text/javascript" src="js/main.js" charset="UTF-8"></script>
      

        <link rel="stylesheet" href="css/style.build.css">
        <style>
            #top{
                margin-left: 150px;
            }
        </style>

        <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
    </head>
    <body class="page page--index" id="top">
        <%
        HttpSession ses = request.getSession(false);
            if (ses.getAttribute("name") == null || ses.getAttribute("name").equals("")) {
                request.setAttribute("error_message", "Login First");
                request.getRequestDispatcher("Navimate_home.jsp").forward(request, response);
            } else {
                %>
        <div id="mySidenav" class="sidenav-navi">

            <a class="tablinks" onclick="openCity(event, 'Users')" id="defaultOpen">Users</a>
            <br>
            <br>
            <a class="tablinks" onclick="openCity(event, 'Health')">Health</a>
            <br>
            <br>
            <a class="tablinks" onclick="openCity(event, 'Activity')">Activity</a>
            <br>
            <br>
            <a>Contact</a>
        </div>


        <div id="Users" class="tabcontent">
            <%--<span onclick="this.parentElement.style.display = 'none'" class="topright">x</span>--%>
            <h3>List from A - Z</h3>
            <p>London is the capital city of England.</p>
            <ol style="list-style: none">
                <%
                    for (char a= 'A';a<='Z'; a++) {
                %>
                <li><%=a%>
                </li>
                <%
                    }
                %>
            </ol>
        </div>

        <div id="Health" class="tabcontent">

            <h3>Paris</h3>
            <p>Paris is the capital of France.</p> 
        </div>

        <div id="Activity" class="tabcontent">

            <h3>Activity</h3>
            <p>Tokyo is the capital of Japan.</p>
        </div>




        <div class="header page-header--index">
            <header class="page-header page-header--index">
                <div class="page-header__inner">
                    <a class="page-header__logo" href="Navimate_home.jsp" style="margin-left: 150px"></a>

                    <div class="page-header__title">
                        <a href="#">Navimate</a>
                    </div>

                    <div class="page-header__menu" onclick="toggle_menu()">

                        <svg version="1.1" id="icon-menu" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="37px" height="37px" viewBox="0 0 37 37" style="enable-background:new 0 0 37 37;" xml:space="preserve">
                        <path class="icon_white" d="M8,26h21v-1.8H8V26z M8,11v1.8h21V11H8z M8,19.2h21v-1.8H8V19.2z"/>
                        </svg>

                    </div>




                    <nav class="page-header__nav">
                        <ul class="sitenav">

                            <li class="sitenav-item">

                            </li>
                            <li class="sitenav-item">

                            </li>

                            <li class="sitenav-item">

                            </li>
                            <li class="sitenav-item">

                            </li>

                            <li class="sitenav-item">

                            </li>
                            <li class="sitenav-item dropdown">
                                <a href="logout_verify" >
                                    Logout</a>

                            </li>
                        </ul>
                    </nav>
                </div>


                <nav class="page-header__drawer drawer">
                    <div class="drawer__inner">
                        <div class="drawer__close" onclick="toggle_menu()">

                            <svg version="1.1" id="icon-close" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                 width="37px" height="37px" viewBox="0 0 37 37" style="enable-background:new 0 0 37 37;" xml:space="preserve">
                            <polygon class="icon_white" points="26.7,11.6 25.4,10.3 18.5,17.2 11.6,10.3 10.3,11.6 17.2,18.5 10.3,25.4 11.6,26.7 18.5,19.8
                                     25.4,26.7 26.7,25.4 19.8,18.5 "/>
                            </svg>

                        </div>

                        <div class="drawer__icon">
                            <img src="images/appicon.png" width="100%">
                        </div>

                        <ul class="menu menu--drawer">
                            <li class="menu__item">
                                <a href="https://play.google.com/store/apps/details?id=com.navimate.main" class="menu__link">
                                    Download                                </a>
                            </li>
                            <li class="menu__item">
                                <a href="#" class="menu__link">
                                    Features                                </a>
                            </li>
                            <li class="menu__item">
                                <a href="privacy.jsp" class="menu__link">
                                    Legal                              </a>
                            </li>
                            <li class="menu__item">
                                <a href="logout_verify" class="menu__link">
                                    Logout</a>

                            </li>
                            <li class="menu__item">
                                <a href="#" class="menu__link">
                                    Get in touch                                </a>
                            </li>

                        </ul>
                    </div>

                </nav>

            </header>
        </div>








        <footer class="page-footer-container">
            <div class="page-footer -primary">
                <div class="page-footer__inner">

                    <div class="four -spaced">
                        <div class="block block--footer four__item">
                            <h4 class="block__title">Navimate</h4>
                            <div class="block__body">
                                <ul class="list list--footer">
                                    <li class="list__item">
                                        <a href="#" class="list__link">
                                            Features                                            </a>
                                    </li>

                                    <li class="list__item">
                                        <a href="https://play.google.com/store/apps/details?id=com.navimate.main" class="list__link">
                                            Download                                            </a>
                                    </li>
                                    <li class="list__item">
                                        <a href="privacy.jsp" class="list__link">
                                            Legal                                            </a>
                                    </li>

                                </ul>
                            </div>
                        </div>

                        <div class="block block--footer four__item">
                            <h4 class="block__title">Download</h4>
                            <div class="block__body">
                                <ul class="list list--footer">

                                    <li class="list__item">
                                        <a href="https://play.google.com/store/apps/details?id=com.navimate.main" class="list__link">
                                            <img class="download_icons" src="images/android1.png" width="20px" alt="">
                                            Android                                            </a>
                                    </li>
                                    <!--
                                    <li class="list__item">
                                        <a href="#" class="list__link">
                                            iPhone                                            </a>
                                    </li>
                                    !-->
                                    <li class="list__item">
                                        <span class="list__empty"></span>
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <div class="block block--footer four__item">
                            <h4 class="block__title">Presence</h4>
                            <div class="block__body">
                                <ul class="list list--footer">

                                    <li class="list__item">
                                        <a href="#" class="list__link">
                                            <img class="download_icons" src="images/twitter.png" width="20px" alt="">
                                            Twitter                                            </a>
                                    </li>
                                    <li class="list__item">
                                        <a href="#" class="list__link">
                                            <img class="download_icons" src="images/facebook.png" width="20px" alt="">
                                            Facebook                                            </a>
                                    </li>
                                    <li class="list__item">
                                        <a href="#" class="list__link">
                                            <img class="download_icons" src="images/linkedin.png" width="20px" alt="">
                                            LinkedIn                                           </a>
                                    </li>


                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="page-footer -secondary">
                <div class="page-footer__inner">
                    <div class="four">
                        <div class="four__item" dir="auto">
                            2017 &copy; Navimate Inc.
                        </div>
                        <div class="four__item -span3">
                            <a href="privacy.jsp" class="page-footer__link">Privacy & Terms</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <script>
            function openCity(evt, tabName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(tabName).style.display = "block";
                evt.currentTarget.className += " active";
            }

// Get the element with id="defaultOpen" and click on it
            document.getElementById("defaultOpen").click();

            var open = false;
            var speed = 200;
            function toggle_lng_menu() {
                if (open) {
                    $('#lng_open').slideUp(speed);
                    $('.header').removeClass('is-expanded');
                } else {
                    $('#lng_open').slideDown(speed);
                    $('.header').addClass('is-expanded');
                }
                open = !open;
            }

            function toggle_menu() {
                $('.page-header__drawer').toggleClass('is-visible');
            }

            function toggle_search() {
                $('.page-subheader--search').slideToggle();
            }





        </script>
        <%
        }
        %>
    </body>
</html>
