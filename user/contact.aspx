<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebUni_Project.user.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
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
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="contact-page spad pb-0">
        <div class="container">
            <div class="row justify-content-center" style="margin: 0;">
                <div class="col-lg-4 col-md-6" style="padding: 0 15px;">
                    <div class="contact-form-warp" style="background: #d82a4e; padding: 45px 47px; text-align: center;">
                        <div class="section-title text-white text-center" style="padding-bottom: 20px;">
                            <h2 style="color: #ffffff; font-size: 36px; font-weight: 700; margin-bottom: 10px;">Get in Touch
                            </h2>
                            <p style="color: #ffffff; font-size: 14px; line-height: 1.6; margin-bottom: 30px; padding: 0 10px;">
                                We're here to help! Whether you have a question about an exam, need technical support, or want to give us feedback, our team is ready to assist you.               
                            </p>
                        </div>
                        <form class="contact-form">
                            <asp:TextBox ID="txtnm" runat="server" placeholder="Your Name"
                                Style="height: 45px; width: 100%; padding: 0 15px; margin-bottom: 15px; border: none; font-size: 14px; background: #edf4f6; box-sizing: border-box; display: block; border-radius: 0;">
                            </asp:TextBox>
                            <asp:TextBox ID="txteml" runat="server" placeholder="Your E-mail"
                                Style="height: 45px; width: 100%; padding: 0 15px; margin-bottom: 15px; border: none; font-size: 14px; background: #edf4f6; box-sizing: border-box; display: block; border-radius: 0;">
                            </asp:TextBox>
                            <asp:TextBox ID="txtsub" runat="server" placeholder="Subject"
                                Style="height: 45px; width: 100%; padding: 0 15px; margin-bottom: 15px; border: none; font-size: 14px; background: #edf4f6; box-sizing: border-box; display: block; border-radius: 0;">
                            </asp:TextBox>
                            <asp:TextBox ID="txtmsg" runat="server" placeholder="Message" TextMode="MultiLine"
                                Style="height: 100px; width: 100%; padding: 10px 15px; margin-bottom: 25px; border: none; font-size: 14px; background: #edf4f6; box-sizing: border-box; display: block; resize: vertical; border-radius: 0;">
                            </asp:TextBox>
                            <asp:Button ID="btncon" class="site-btn" runat="server" Text="Sent Message" OnClick="btncon_Click"
                                Style="background: #d82a4e; color: #fff; border: 1px solid #ffffff; padding: 15px 30px; font-size: 14px; font-weight: 600; cursor: pointer; min-width: 150px; margin-top: 15px; display: inline-block;"></asp:Button>
                            <br />
                            <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                        </form>
                    </div>
                </div>
            </div>

            <section class="banner-section spad">
                <div class="container">
                    <div class="section-title mb-0 pb-2">
                        <h2>Join Our Community Now!</h2>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.
                       
                        </p>
                    </div>
                    <div class="text-center pt-5">
                        <a href="register.aspx" class="site-btn">Register Now</a>
                    </div>
                </div>
            </section>
    </section>
    <!-- Page -->
    <%-- <section class="contact-page spad pb-0">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="contact-form-warp">
                        <div class="section-title text-white text-left">
                            <h2>Get in Touch</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. </p>
                        </div>
                        <form class="contact-form">
                            <asp:TextBox ID="txtnm" runat="server" placeholder="Your Name"></asp:TextBox>
                            <br />

                            <asp:TextBox ID="txteml" runat="server" placeholder="Your E-mail"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="txtsub" runat="server" placeholder="Subject"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="txtmsg" runat="server" placeholder="Message"></asp:TextBox>
                            <br />
                            <asp:Button ID="btncon" class="site-btn" runat="server" Text="Sent Message" OnClick="btncon_Click" />
                            <br />
                        </form>
                    </div>
                </div>

                <!-- Page end -->
                <!-- banner section -->
                <section class="banner-section spad">
                    <div class="container">
                        <div class="section-title mb-0 pb-2">
                            <h2>Join Our Community Now!</h2>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec malesuada lorem maximus mauris scelerisque, at rutrum nulla dictum. Ut ac ligula sapien. Suspendisse cursus faucibus finibus.
                            </p>
                        </div>
                        <div class="text-center pt-5">
                            <a href="register.aspx" class="site-btn">Register Now</a>
                        </div>
                    </div>
                </section>
                <!-- banner section end -->
    </section>--%>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

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

