﻿<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebUni_Project.user.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <title>WebUni - Exam Template</title>
        <meta charset="UTF-8">
        <meta name="description" content="WebUni Education Template">
        <meta name="keywords" content="webuni, education, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="shortcut icon" />

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link href="\css\style.css" rel="stylesheet" />

        <%--        <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\owl.carousel.css" rel="stylesheet" />
       <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\font-awesome.min.css" rel="stylesheet" />
       <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\admin.css" rel="stylesheet" />
       <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\bootstrap.min.css" rel="stylesheet" />--%>

        <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

    </head>
    <body>


        <!-- Header section -->
        <header class="header-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <div class="site-logo">
                            <img src="img/logo.png" alt="">
                        </div>
                        <div class="nav-switch">
                            <i class="fa fa-bars"></i>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9">
                        <a href="register.aspx" class="site-btn header-btn">Register</a>
                        <nav class="main-menu">
                            <ul>
                                <li><a href="index.aspx">Home</a></li>
                                <li><a href="about.aspx">About us</a></li>
                                <li><a href="Subject.aspx">Subjects</a></li>
                                <li><a href="MyExam.aspx">MyExam</a></li>
                                <li><a href="contact.aspx">Contact</a></li>


                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header section end -->


        <!-- Hero section -->
        <%--        <section class="hero-section set-bg" data-setbg="img/bg.jpg ">--%>
        <section class="hero-section set-bg" data-setbg="img/page-bg/1.jpg">
            <div class="container">
                <div class="hero-text text-white">
                    <h2>Get The Best Free Online Exams</h2>
                    <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
                    <p>
                        The primary aim of this system is to digitize the traditional exam process, making it faster, more efficient, and accessible from anywhere. It eliminates the need for physical exam centers, paper usage, and manual correction.
                    </p>
                </div>
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero section end -->
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="spad">
        <div class="container">
            <div class="section-title">
                <h2>Faculties</h2>
                <p>
                    Select your subject to access semester-wise exams, mock tests, and study materials based on your university syllabus.
                </p>
            </div>
        </div>
        <div class="course-warp">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="course-item" onclick="window.location.href='asp_net.aspx?subject=computer-networks'">
                            <div class="course-thumb" style="background: linear-gradient(45deg, #6a11cb, #2575fc);">
                                <img src="img/pb.jpg" alt="Networking" style="width: 150%; height: 300px; <%--object-fit: cover; border-radius: 10px; "--%>">

                                <span></span>
                            </div>
                            <div class="course-info">
                                <div class="course-text">

                                    <h5>ASP.NET(C#)</h5>
                                    <p>
                                        Test your knowledge on OSI model, TCP/IP protocols, subnetting, and network security concepts.
                                    </p>
                                    <%--                                <span class="students">15 Mock Papers</span>--%>
                                </div>
                                <div class="course-author">
                                    <div class="ca-pic set-bg" style="background: linear-gradient(45deg, #6a11cb, #2575fc);">
                                    </div>
                                    <h6>Prof. Parvez Belim</h6>
                                    <p>
                                        Subject Expert <span>Networks</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="course-item" onclick="window.location.href='bca-exam-list.html?subject=dbms'">
                            <div class="course-thumb" style="background: linear-gradient(45deg, #f5af19, #f12711);">
                                <img src="img/jf.jpg" alt="Networking" style="width: 150%; height: 300px; <%--object-fit: cover; border-radius: 10px; "--%>">

                                <span></span>
                            </div>
                            <div class="course-info">
                                <div class="course-text">
                                    <h5>Database Management Systems</h5>
                                    <p>
                                        Covering SQL, normalization, ER diagrams, and transaction management as per the university curriculum.
                                    </p>
                                    <%--                                <span class="students">18 Mock Papers</span>--%>
                                </div>
                                <div class="course-author">
                                    <div class="ca-pic set-bg" style="background: linear-gradient(45deg, #f5af19, #f12711);">
                                    </div>
                                    <h6>Prof. Jay Fuletra</h6>
                                    <p>
                                        Subject Expert <span>DBMS</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="course-item" onclick="window.location.href='bca-exam-list.html?subject=web-technologies'">
                            <div class="course-thumb" style="background: linear-gradient(45deg, #8E2DE2, #4A00E0);">
                                <img src="img/hd.jpg" alt="Networking" style="width: 150%; height: 300px; <%--object-fit: cover; border-radius: 10px; "--%>">

                                <span></span>
                            </div>
                            <div class="course-info">
                                <div class="course-text">
                                    <h5>Python</h5>
                                    <p>
                                        Exams on HTML, CSS, JavaScript, and other essential technologies for modern web development.
                                    </p>
                                    <%--                                <span class="students">22 Mock Papers</span>--%>
                                </div>
                                <div class="course-author">
                                    <div class="ca-pic set-bg" style="background: linear-gradient(45deg, #8E2DE2, #4A00E0);">
                                    </div>
                                    <h6>Dr.Homera Durani</h6>
                                    <p>
                                        Subject Expert <span>Web</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="course-item" onclick="window.location.href='bca-exam-list.html?subject=data-structures'">
                            <div class="course-thumb" style="background: linear-gradient(45deg, #00c9ff, #92fe9d);">
                                <img src="img/am.jpg" alt="Networking" style="width: 150%; height: 300px; <%--object-fit: cover; border-radius: 10px; "--%>">

                                <span></span>
                            </div>
                            <div class="course-info">
                                <div class="course-text">
                                    <h5>Data Structures</h5>
                                    <p>
                                        Exams on arrays, linked lists, stacks, queues, trees, and graphs, with a focus on algorithm complexity.
                                    </p>
                                    <%--                                <span class="students">25 Mock Papers</span>--%>
                                </div>
                                <div class="course-author">
                                    <div class="ca-pic set-bg" style="background: linear-gradient(45deg, #00c9ff, #92fe9d);">
                                    </div>
                                    <h6>Prof. Alpa Makavana</h6>
                                    <p>
                                        Subject Expert <span>Algorithms</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="course-item" onclick="window.location.href='bca-exam-list.html?subject=software-engineering'">
                            <div class="course-thumb" style="background: linear-gradient(45deg, #ff4e50, #f9d423);">
                                <img src="img/ak.jpg" alt="Networking" style="width: 150%; height: 300px; <%--object-fit: cover; border-radius: 10px; "--%>">

                                <span></span>
                            </div>
                            <div class="course-info">
                                <div class="course-text">
                                    <h5>Software Engineering</h5>
                                    <p>
                                        Covering SDLC models like Waterfall and Agile, requirement analysis, and software testing methodologies.
                                    </p>
                                    <%--                                <span class="students">12 Mock Papers</span>--%>
                                </div>
                                <div class="course-author">
                                    <div class="ca-pic set-bg" style="background: linear-gradient(45deg, #ff4e50, #f9d423);">
                                    </div>
                                    <h6>Prof. Anju Kakkad</h6>
                                    <p>
                                        Subject Expert <span>SE</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="course-item" onclick="window.location.href='bca-exam-list.html?subject=c-programming'">
                            <div class="course-thumb" style="background: linear-gradient(45deg, #0052D4, #4364F7, #6FB1FC);">
                                <img src="img/pk.jpg" alt="Networking" style="width: 150%; height: 300px; <%--object-fit: cover; border-radius: 10px; "--%>">

                                <span></span>
                            </div>
                            <div class="course-info">
                                <div class="course-text">
                                    <h5>Programming in C</h5>
                                    <p>
                                        Fundamental concepts of C programming including logic, syntax, pointers, and file handling for semester exams.
                                    </p>
                                    <%--                                <span class="students">20 Mock Papers</span>--%>
                                </div>
                                <div class="course-author">
                                    <div class="ca-pic set-bg" style="background: linear-gradient(45deg, #0052D4, #6FB1FC);">
                                    </div>
                                    <h6>Prof. Parul Kanta</h6>
                                    <p>
                                        Subject Expert <span>Programming</span>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="spad" style="background: #f8f9fa;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center mb-4">
                    <h4 style="color: #d82a4e;">6 Subjects</h4>
                    <p>
                        Core BCA Coverage
                    </p>
                </div>
                <div class="col-lg-3 col-md-6 text-center mb-4">
                    <h4 style="color: #d82a4e;">112+</h4>
                    <p>
                        Total Mock Papers
                    </p>
                </div>
                <div class="col-lg-3 col-md-6 text-center mb-4">
                    <h4 style="color: #d82a4e;">University</h4>
                    <p>
                        Pattern Based
                    </p>
                </div>
                <div class="col-lg-3 col-md-6 text-center mb-4">
                    <h4 style="color: #d82a4e;">Expert</h4>
                    <p>
                        Faculty Guidance
                    </p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

    <!-- footer section -->
    <footer class="footer-section spad pb-0">
        <div class="footer-top">
            <div class="footer-warp">
                <div class="row">
                    <div class="widget-item">
                        <h4>Contact Info</h4>
                        <ul class="contact-list">
                            <li>1481 Creekside Lane
                                            <br>
                                Avila Beach, CA 931</li>
                            <li>+53 345 7953 32453</li>
                            <li>onlineexam@gmail.com</li>
                        </ul>
                    </div>
                    <div class="widget-item">
                        <h4>Engeneering</h4>
                        <ul>
                            <li><a href="">Applied Studies</a></li>
                            <li><a href="">Computer Engeneering</a></li>
                            <li><a href="">Software Engeneering</a></li>
                            <li><a href="">Informational Engeneering</a></li>
                            <li><a href="">System Engeneering</a></li>
                        </ul>
                    </div>
                    <div class="widget-item">
                        <h4>Graphic Design</h4>
                        <ul>
                            <li><a href="">Applied Studies</a></li>
                            <li><a href="">Computer Engeneering</a></li>
                            <li><a href="">Software Engeneering</a></li>
                            <li><a href="">Informational Engeneering</a></li>
                            <li><a href="">System Engeneering</a></li>
                        </ul>
                    </div>
                    <div class="widget-item">
                        <h4>Development</h4>
                        <ul>
                            <li><a href="">Applied Studies</a></li>
                            <li><a href="">Computer Engeneering</a></li>
                            <li><a href="">Software Engeneering</a></li>
                            <li><a href="">Informational Engeneering</a></li>
                            <li><a href="">System Engeneering</a></li>
                        </ul>
                    </div>
                    <div class="widget-item">
                        <h4>Newsletter</h4>
                        <form class="footer-newslatter">
                            <input type="email" placeholder="E-mail">
                            <button class="site-btn">
                                Subscribe
                            </button>
                            <p>
                                *We don’t spam
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="footer-warp">
                <ul class="footer-menu">
                    <li><a href="#">Terms & Conditions</a></li>
                    <li><a href="#">Register</a></li>
                    <li><a href="#">Privacy</a></li>
                </ul>
                <div class="copyright">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i>by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </div>
            </div>
        </div>
    </footer>
    <!-- footer section end -->


    <!--====== Javascripts & Jquery ======-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    </html>
</asp:Content>

