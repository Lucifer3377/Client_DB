<%-- 
    Document   : register
    Created on : Jun 23, 2017, 11:17:40 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
        <title>Navimate</title>
        <link id="favicon" rel="shortcut icon" href="images/appicon.png" type="image/png">

            <link rel="stylesheet" type="text/css" href="css/style.regi.css" media="all" />
            <link rel="stylesheet" type="text/css" href="css/style.build.css" media="all" />
            <script type="text/javascript" src="js/main.js" charset="UTF-8"></script>
            <script type="text/javascript" src="js/jquery.min.js"></script>
            <script type="text/javascript" src="js/jquery-ui.min.js"></script>
            <script type="text/javascript" src="js/jquery.inputfocus-0.9.min.js"></script>
            <script type="text/javascript" src="js/jquery.main.js"></script>
    </head>

    <body class="page page--index" id="top">
        <div class="header page-header--index">
            <header class="page-header page-header--index">
                <div class="page-header__inner">
                    <a class="page-header__logo" href="Navimate_home.jsp"></a>

                    <div class="page-header__title">
                        <a href="Navimate_home.jsp">Navimate</a>
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
                                <a href="https://play.google.com/store/apps/details?id=com.navimate.main">
                                    Download                                </a>
                            </li>

                            <li class="sitenav-item">
                                <a href="privacy.jsp">
                                    Legal                               </a>
                            </li>
                            <li class="sitenav-item dropdown">
                                <a href="javascript:void(0)" onclick='openNav()'>
                                    Login</a>

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
                                <a href="privacy.jsp" class="menu__link">
                                    Legal                              </a>
                            </li>
                            <li class="menu__item">
                                <a href="javascript:void(0)" class="menu__link" onclick='openNav()'>
                                    Login</a>

                            </li>
                            <li class="menu__item">
                                <a href="javascript:void(0)" class="menu__link">
                                    Get in touch                                </a>
                            </li>

                        </ul>
                    </div>

                </nav>

            </header>
        </div>
        <div id="displaybox" onclick='outer_off()' style="display:none"></div>
       
        <form  id="mySidenav" class="sidenav" action="login_verify" method="post">
            <div class="wrap">
                <div class="avatar">
                    <img src="images/appicon.png">
                </div>
                <input type="text" name="username" placeholder="Username" required>
                    <div class="bar">
                        <i></i>
                    </div>
                    <input type="password" name="password" placeholder="Password" required>
                        <a href="javascript:void(0)" class="forgot_link">forgot ?</a>
                        <%
                            if (null != request.getAttribute("error_message")) {
                        %>
                        <div align="center" ><span>
                                <%
                                    out.println(request.getAttribute("error_message"));
                                %>
                            </span></div>
                            <%
                                }
                            %>
                        <button>Sign in</button>
                        <span><a href="register.jsp">Register Now</a></span>
                        </div>
                        </form>
                        <div id="container">
                            <form action="#" method="post">

                                <!-- #first_step -->
                                <div id="first_step">
                                    <h1>SIGN UP FOR A <span>NAVIMATE</span> ACCOUNT</h1>

                                    <div class="form">
                                        <input type="text" name="username" id="username" value="username" />
                                        <label for="username">At least 4 characters. Uppercase letters, lowercase letters and numbers only.</label>

                                        <input type="password" name="password" id="password" value="password" />
                                        <label for="password">At least 4 characters. Use a mix of upper and lowercase for a strong password.</label>

                                        <input type="password" name="cpassword" id="cpassword" value="password" />
                                        <label for="cpassword">If your passwords aren't equal, you won't be able to continue with signup.</label>
                                    </div>      <!-- clearfix --><div class="clear"></div><!-- /clearfix -->
                                    <input class="submit" type="submit" name="submit_first" id="submit_first" value="" />
                                </div>      <!-- clearfix --><div class="clear"></div><!-- /clearfix -->


                                <!-- #second_step -->
                                <div id="second_step">
                                    <h1>SIGN UP FOR A <span>NAVIMATE</span> ACCOUNT</h1>

                                    <div class="form">                                        
                                        <input type="text" name="email" id="email" value="email address" />
                                        <label for="email">Your email address. We send important administration notices to this address. </label>  
                                        
                                        <input type="text" name="team_name" id="team_name" placeholder="Enter unique Team name" />
                                        <label for="team_name">The team name should be Unique to your Team.</label>
                                        
                                        <input type="text" pattern="[0-9]+" name="mobile" id="mobile" placeholder="XX-XX-XX-XX-XX" />
                                        <label for="mobile">Please provide a valid Mobile number for further communication.</label>                                        
                                       
                                    </div>      <!-- clearfix --><div class="clear"></div><!-- /clearfix -->
                                    <input class="submit" type="submit" name="submit_second" id="submit_second" value="" />
                                </div>      <!-- clearfix --><div class="clear"></div><!-- /clearfix -->


                              


                                <!-- #fourth_step -->
                                <div id="fourth_step">
                                    <h1>SIGN UP FOR A<span>NAVIMATE</span> ACCOUNT</h1>

                                    <div class="form">
                                        <h2>Summary</h2>

                                        <table>
                                            <tr><td>Username</td><td></td></tr>
                                            <tr><td>Password</td><td></td></tr>
                                            <tr><td>Email</td><td></td></tr>                                                                                  
                                        </table>
                                    </div>      <!-- clearfix --><div class="clear"></div><!-- /clearfix -->
                                    <input class="send submit" type="submit" name="submit_fourth" id="submit_fourth" value="" />            
                                </div>

                            </form>
                        </div>
                        <div id="progress_bar">
                            <div id="progress"></div>
                            <div id="progress_text">0% Complete</div>
                        </div>
                        <br><br>
                                <footer class="page-footer-container">
                                    <div class="page-footer -primary">
                                        <div class="page-footer__inner">

                                            <div class="four -spaced">
                                                <div class="block block--footer four__item">
                                                    <h4 class="block__title">Navimate</h4>
                                                    <div class="block__body">
                                                        <ul class="list list--footer">
                                                            <li class="list__item">
                                                                <a href="javascript:void(0)" class="list__link">
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
                                                                <a href="javascript:void(0)" class="list__link">
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
                                                                <a href="javascript:void(0)" class="list__link">
                                                                    <img class="download_icons" src="images/twitter.png" width="20px" alt="">
                                                                        Twitter                                            </a>
                                                            </li>
                                                            <li class="list__item">
                                                                <a href="javascript:void(0)" class="list__link">
                                                                    <img class="download_icons" src="images/facebook.png" width="20px" alt="">
                                                                        Facebook                                            </a>
                                                            </li>
                                                            <li class="list__item">
                                                                <a href="javascript:void(0)" class="list__link">
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
                                    function openNav() {
                                        var thediv = document.getElementById('displaybox');
                                        if (thediv.style.display === "none") {
                                            thediv.style.display = "block";
                                            document.getElementById("mySidenav").style.height = "350px";
                                        } else {
                                            thediv.innerHTML = '';
                                        }

                                    }
                                    function outer_off() {
                                        document.getElementById('displaybox').style.display = "none";
                                        document.getElementById("mySidenav").style.height = "0";
                                    }
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


                                </body>
                                </html>
