<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Java Developer CV">
    <meta name="author" content="Liliya Yalovchenko">
    <title>Liliya Yalovchenko CV</title>

    <!-- Bootstrap core CSS-->
    <link rel="shortcut icon" href="<c:url value="/favicon-1.ico"/>"/>
    <link href="<c:url value="/css/bootstrap.css"/>" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="<c:url value="/css/menu.css"/>" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="<c:url value="/js/Chart.bundle.js"/>"></script>
    <style>
        canvas {
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
        }
    </style>
</head>
<body style="background-color: teal">

<div class="container" style="background-color: #00b3b3; width: 60%">
    <div class="row">
        <div class="col-sm-12 blog-main">
            <div class="row">
                <div class="blog-header">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-2">
                                <img src="images/girl-me.png" width="128" alt="Girl">
                            </div>
                            <div class="col-md-6">
                                <h3 class="blog-title">Liliya Yalovchenko</h3>
                                <p class="text-left blog-quotation">Cool girl wants to join a team of inspired developers</p>
                            </div>
                            <div class="col-md-4 sidebar-module" style="padding: 22px 0;">
                                <ol class="list-unstyled">
                                    <li class="text-right"><a href="https://goo.gl/CLuX7X" target="_blank">GitHub</a><img src="images/github.png" width="32" alt="GitHub"></li>
                                    <li class="text-right"><a href="https://goo.gl/Knw8dX" target="_blank">LinkedIn</a><img src="images/linkedIn.png" width="32" alt="LinkedIn"></li>
                                    <li class="text-right"><a href="mailto:liliyayalovchenko@gmail.com">liliyayalovchenko@gmail.com <img src="images/gmail.png" width="32" alt="Gmail"></a></li>
                                </ol>
                            </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
            <div class="row">
                <section class="col-md-12 ss-style-triangles">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-center">OBJECTIVE</h2>
                        </div>

                    </div>
                    <div><img src="images/target.png" width="64" alt="Objective"></div>
                    <p class="text-center" style="font-family: OpenSans-Light; font-size: 16px;">
                        To become an <strong> effective developer</strong>, thereby not only earn a living well, but
                        also to take a significant part in the <strong>prosperity of the company</strong>. I aim to
                        <strong>be an example</strong> for newcomers and juniors in one year after joining the company,
                        to help them and <strong>inspire</strong>.
                    </p>

                </section>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <h1 class="blog-skills text-center">SKILLS</h1>
                </div>
            </div>
            <div class="col-lg-12">

                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail skills">
                            <img src="images/java2.png" alt="Java" width="32">
                            <div class="caption skill-block">
                                <h6 class="text-center">Programming language</h6>
                                <p class="text-center">Java</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail skills">
                            <img src="images/html3.png" alt="Technologies" width="32">
                            <div class="caption skill-block">
                                <h6 class="text-center">Technologies</h6>
                                <p class="text-center">OOP, MySQL, Java Web basics: Servlets/JSP/HTML, CSS, Unit testing, refactoring </p>

                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail skills">
                            <img src="images/settings.png" alt="Related technologies" width="32">
                            <div class="caption skill-block">
                                <h6 class="text-center">Related technologies</h6>
                                <p class="text-center">XML, JSON, HTTP, basic level of JavaScript knowledge</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail skills">
                            <img src="images/frameworks.png" alt="Frameworks and libraries" width="32">
                            <div class="caption skill-block">
                                <h6 class="text-center">Frameworks and libraries</h6>
                                <p class="text-center">Spring (IoC, MVC, AOP), Hibernate, JPA, JUnit</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail skills">
                            <img src="images/devtools.png" alt="Development tools" width="32">
                            <div class="caption skill-block">
                                <h6 class="text-center">Development Tools</h6>
                                <p class="text-center">IntelliJ IDEA, GitHub, Apache Maven, JIRA from Atlassian</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail skills">
                            <img src="images/languages.png" alt="Languages" width="32">
                            <div class="caption skill-block">
                                <h6 class="text-center">Languages</h6>
                                <p class="text-center">English - advanced</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-md-10" style="margin: auto; float:none;">
                    <canvas id="canvas"></canvas>
                </div>
            </div>
            <script>
                var barChartData = {
                    labels: ["Java SE", "OOP", "Java EE",  "Servlets/JSP/HTM/CSS", "MySQL", "Maven", "Spring, Hibernate", "XML/JSON", "Unix Shell", "Unit testing", "JavaScript"],
                    datasets: [{
                        label: 'Level of skills',
                        backgroundColor: "#ffc927",
                        data: [92, 70, 60, 50, 60, 50, 40, 30, 40, 30, 10]
                    }]

                };

                window.onload = function() {
                    var ctx = document.getElementById("canvas").getContext("2d");
                    window.myBar = new Chart(ctx, {
                        type: 'bar',
                        data: barChartData,
                        options: {
                            // Elements options apply to all of the options unless overridden in a dataset
                            // In this case, we are setting the border of each bar to be 2px wide and green
                            elements: {
                                rectangle: {
                                    borderWidth: 2,
                                    //borderColor: 'rgb(0, 255, 0)',
                                    borderSkipped: 'bottom'
                                }
                            },
                            responsive: true,
                            legend: {
                                display: false,
                                position: 'top'
                            },
                            title: {
                                display: false,
                                text: 'Technical skills'


                            }
                        }
                    });

                };
            </script>

            <div class="row">
                <section class="col-md-12 ss-style-triangles">
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="text-center">MY PROJECTS</h2>
                        </div>
                        <div class="row">
                            <img align="middle" src="images/projects.png" alt="Projects" width="64">
                        </div>
                    </div>
                    <p class="text-center" style="font-family: OpenSans-Light; font-size: 16px;">
                        These not commercial projects were developed by me during more than year of learning Java,
                        Front-end and related technologies. One of these is a team's project that was developed in a
                        group with my  	colleagues at the end of Java Core part at the GoIt courses.
                    </p>
                </section>
            </div>
            <ul class="media-list" style="padding-top: 80px; margin-right: 25px; margin-left: 25px;">
                <li class="media">
                    <a class="pull-left" href="https://goo.gl/qaUsXF">
                        <img class="media-object" src="images/cart.png" alt="Online shop">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Internet shop project</h4>
                        <h6>Project mission</h6>
                        <p class="text-justify">
                            Online shop where brushes for make-up are selling. Client can choose product among different
                            categories of goods and leave feedbacks to any product.
                        </p>

                    </div>
                </li>
                <hr style="width: 65%;">
                <li class="media">
                    <a class="pull-left" href="https://goo.gl/xep0jt">
                        <img class="media-object" src="images/shop.png" alt="Restaurant system">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Application for conducting the account in the restaurant</h4>
                        <h6>Project mission</h6>
                        <p class="text-justify">
                            The main goal of console application is to manage following activities in the restaurant:
                            tracking of ingredients on a warehouse, create and delete dishes from existing ingredients,
                            create employees and orders, add and remove dishes from open orders, set up various kind of
                            menus and fill it with dishes.
                        </p>
                    </div>
                </li>
                <hr style="width: 65%;">
                <li class="media">
                    <a class="pull-left" href="https://goo.gl/ycWMqA">
                        <img class="media-object" src="images/calculator-3.png" alt="Matrix calculator">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Matrices calculator</h4>
                        <h6>Project mission</h6>
                        <p class="text-justify">
                            Matrices calculator is aimed to solve the following problems: add, multiply, and subtract matrices
                            and multiply matrix by a number.
                        </p>
                        <p class="text-justify">
                            I personally developed a matrix object and validator, created presentation, monitored issues
                            and bugs in other contributors’ code and assisted in fixing it.
                        </p>

                    </div>
                </li>

            </ul>

        </div>
        <!-- /.blog-main -->


    </div><!-- /.row -->





<div class="blog-footer">
    <p>Built with <a href="http://getbootstrap.com">Bootstrap</a> by <a href="#">Liliya Yalovchenko</a>.</p>

    <div>Icons made by <a href="http://www.flaticon.com/authors/freepik" title="Freepik">Freepik</a> from <a href="http://www.flaticon.com" title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>
    <p>
        <a href="#">Back to top</a>
    </p>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="<c:url value="/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/js/docs.min.js"/>"></script>
</body>
</html>
