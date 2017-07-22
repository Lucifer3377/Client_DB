<%-- 
    Document   : Navimate_home
    Created on : Jun 6, 2017, 9:26:43 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Navimate</title>



        <%-- <meta property="og:title" content="Navimate"/>
         <meta property="og:image" content="images/appicon.png"/>
         <meta property="og:site_name" content="navimateapp.com"/>

        <meta name="description" content="write something">
        <meta property="og:description" content="write something"/>

        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
        <meta http-equiv="X-UA-Compatible" content="IE=9">

        <meta name="theme-color" content="#1BA691">
        <meta name="msapplication-navbutton-color" content="#1BA691">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="#1BA691">


        <meta name="google-site-verification" content="Cusl-1G4lInGd7xZ55vzhKEF4l3O11umoaqQ-RxTf2w" />--%>
        <link id="favicon" rel="shortcut icon" href="images/appicon.png" type="image/png">
        <script type="text/javascript" src="js/main.js" charset="UTF-8"></script>
        <link rel="stylesheet" href="css/style.build.css">

        <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>

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
                                <a href="#dis_change" id="dis_f">
                                    Features                                </a>
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
                                <a href="#dis_change" class="menu__link" id="dis_g">
                                    Features                                </a>
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

                <button>Sign in</button>
                <span><a href="register.jsp">Register Now</a></span>
            </div>
        </form>
        <%
            if (null != request.getAttribute("error_message")) {

        %>

        <div id="snackbar" onload="ackn()">
            <%                     out.println(request.getAttribute("error_message"));
            %>
        </div>
        <%
            }
        %>



        <div class="section section--hero">
            <div class="block block--hero">
                <div class="block__inner">
                    <h1 class="block__title" style="color:white">
                        A Simple, Safe and Complete<br>Location Management System.           </h1>
                    <div class="block__body" style="color:white">
                        Navimate app provides answers to all your location problems. Track, Share, Save and do much more with any place & path on the planet with anyone.</div>

                    <a href=https://play.google.com/store/apps/details?id=com.navimate.main" class="button button--primary button--s block__action">Download now</a>


                    <div class="block__action actions">
                        <ul>
                            <li>
                                <a class="tooltip" href="https://play.google.com/store/apps/details?id=com.navimate.main">
                                    <img class="download_icons" src="images/android4.png" width="30px" alt="">
                                    Android                        
                                    <span class="tooltiptext">Download</span></a>
                            </li>
                            <!--
                            <li>
                                <a class="tooltip" href="javascript:void(0)">
                                    <img class="download_icons" src="images/apple.png" width="30px" alt="">
                                    iPhone                   
                                    <span class="tooltiptext">Download</span></a>
                          
                            </li>  !-->

                        </ul>

                    </div>
                </div>
                <div class="block__img">
                    <div class="hero-phone"></div>
                </div>
            </div>

        </div>
        <div id="dis_div" class="dis_features">
            <div class="section section--features">
                <div class="section__inner">
                    <div class="feature feature--dark_first feature--calls section__item">
                        <div class="feature__img"></div>
                        <div class="feature__inner">
                            <h3 class="feature__intro">
                                TRACKING             </h3>
                            <h1 class="feature__title">
                            </h1>
                            <div class="feature__text">
                                With Navimate, you can track anyone in real-time. Ensure their safety without violating their privacy with the app's transparent controls.</div>

                            <!-- <div class="feature__hint">
                                <sup>*</sup> Data charges may apply. Contact your provider for details.                </div> -->
                        </div>

                    </div>

                    <div class="section__divider"></div>
                    <div class="feature feature--dimmed feature--security section__item">
                        <div class="feature__img"></div>
                        <div class="feature__inner">

                            <h3 class="feature__intro_other">
                                LOCATION ALARMS                  </h3>
                            <h1 class="feature__title">
                            </h1>
                            <div class="feature__text_other">Navimate lets you set location based alarms. Work, play, read or sleep and let us worry about the nearing destination.
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="section__divider_ver"></div>
            <div class="section section--features">
                <div class="section__inner">
                    <div class="feature feature--dark_first feature--calls_copy section__item">

                        <div class="feature__inner_other">
                            <h3 class="feature__intro">
                                NAVIGATE OFFLINE             </h3>
                            <h1 class="feature__title">
                            </h1>
                            <div class="feature__text">
                                Save, share & view custom routes with your friends. Navigate without ever needing the internet.</div>

                            <!-- <div class="feature__hint">
                                <sup>*</sup> Data charges may apply. Contact your provider for details.                </div> -->
                        </div>
                        <div class="feature__img"></div>
                    </div>

                    <div class="section__divider"></div>
                    <div class="feature feature--dimmed feature--security_copy section__item">

                        <div class="feature__inner_other">

                            <h3 class="feature__intro_other">
                                MARK THE MAP                   </h3>
                            <h1 class="feature__title">
                            </h1>
                            <div class="feature__text_other">Save locations all across the globe with a custom name. Attach useful information to the location.
                            </div>
                        </div>
                        <div class="feature__img"></div>

                    </div>
                </div>
            </div>

            <div class="section__divider_ver"></div>



            <div class="features">

                <div class="feature feature--default feature--docs">
                    <div class="feature__inner">
                        <h3 class="feature__intro">
                            SIMPLE USER INTERFACE            </h3>
                        <h1 class="feature__title">
                        </h1>
                        <div class="feature__text">
                            Experience an easy-to-use UI with a smooth response. </div>
                    </div>
                    <div class="feature__img"></div>
                </div>
                <div class="feature feature--dark feature--voice">
                    <div class="feature__img"></div>
                    <div class="feature__inner">
                        <h3 class="feature__intro_other">
                            MORE...            </h3>
                        <h1 class="feature__title">
                        </h1>
                        <div class="feature__text_other">
                            Pick a location and do so much more with it     </div>
                    </div>

                </div>
            </div>
        </div>




        <div class="section section--more">
            <a class="button button--outline" id="dis_butt" href="#dis_change"><span id="dis_change" value="">Explore features</span></a>
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
                                        <a href="#dis_change" class="list__link" id="dis_h">
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
            $(document).ready(function () {
                $("#dis_butt,#dis_f,#dis_g,#dis_h").click(function ()
                {

                    if ($("#dis_div").is(':hidden')) {

                        $("#dis_div").show(4000);
                        $("#dis_change").text("Hide Features");
                    } else {
                        $("#dis_div").slideUp(3000);
                        $("#dis_change").text("Explore Features");
                    }

                    /*  $("#dis_div").toggle(
                     function () {
                     $("#dis_div").show("slide", {direction: "down"}, 6000);
                     
                     },
                     function () {
                     $("#dis_div").hide("slide", {direction: "up"}, 4000);
                     
                     }
                     );*/
                });
            });



            $("#snackbar").ready(function(){
                var x = document.getElementById("snackbar");
                x.className = "show";
                setTimeout(function () {
                    x.className = x.className.replace("show", "");
                }, 3000);
            });
              
                
            
            



        </script>


    </body>
</html>
