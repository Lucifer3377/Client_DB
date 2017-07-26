<%-- 
    Document   : testing
    Created on : Jul 11, 2017, 9:09:13 PM
    Author     : sandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            ul {
                list-style: none;
                padding: 0;
                margin: 0;
                background: #1bc2a2;
            }

            ul li {
                display: block;
                position: relative;
                float: left;
                background: #1bc2a2;
            }
            li ul { display: none; }

            ul li a {
                display: block;
                padding: 1em;
                text-decoration: none;
                white-space: nowrap;
                color: #fff;
            }

            ul li a:hover { background: #2c3e50; }
            li:hover > ul {
                display: block;
                position: absolute;
            }

            li:hover li { float: none; }

            li:hover a { background: #1bc2a2; }

            li:hover li a:hover { background: #2c3e50; }

            .main-navigation li ul li { border-top: 0; }
            ul ul ul {
                left: 100%;
                top: 0;
            }
            ul:before,
            ul:after {
                content: " "; /* 1 */
                display: table; /* 2 */
            }

            ul:after { clear: both; }
        </style>
        <script type="text/javascript" src="js/jquery-1.12.2.min.js"></script>
    </head>
    <body>
        <ul class="main-navigation">
            <li><a href="#">Home</a></li>
            <li><a href="#">Front End Design</a>
                <ul>
                    <li><a href="#">HTML</a></li>
                    <li><a href="#">CSS</a>
                        <ul>
                            <li><a href="#">Resets</a></li>
                            <li><a href="#">Grids</a></li>
                            <li><a href="#">Frameworks</a></li>
                        </ul>
                    </li>
                    <li><a href="#">JavaScript</a>
                        <ul>
                            <li><a href="#">Ajax</a></li>
                            <li><a href="#">jQuery</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li><a href="#">WordPress Development</a>
                <ul>
                    <li><a href="#">Themes</a></li>
                    <li><a href="#">Plugins</a></li>
                    <li><a href="#">Custom Post Types</a>
                        <ul>
                            <li><a href="#">Portfolios</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Options</a></li>
                </ul>
            </li>
            <li><a href="#">About Us</a></li>
        </ul>
        <input type="text" id="nobita" value="Dragon">
        <input type="text" id="doraemon" value="Doraemon">
        <div id="lala"></div>

        <script type="text/javascript">
            var request;

            $(document).ready(function ()
            {
                $("#nobita,#doraemon").keyup(function ()
                {
                    var id1=this.id;
                    $.ajax({
                        url: "table_data_handler",
                        data: {sno: $('#'+id1).val(), id: this.id},
                        //"sendo=" + $("#id").val(),
                        type: "post",
                        success: function (msg)
                        {
                            $("#lala").html(msg);

                        }
                    });

                });


            });

        </script>
    </body>
</html>
