<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebUni_Project.user.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder1">
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
                                            <li><a href="about-us.aspx">About us</a></li>
                                            <li><a href="courses.aspx">Courses</a></li>
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
                                    The primary aim of this system is to digitize the traditional exam process, making it faster, more efficient, and accessible from anywhere. It eliminates the need for physical exam centers, paper usage, and manual correction.</p>
                            </div>
                            <div class="row">
                                <div class="col-lg-10 offset-lg-1">
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Hero section end -->
            </asp:Content>
<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder2">


<div>
            <h2>User Profile 🧑</h2>
            
            <asp:Panel ID="pnlProfileDetails" runat="server">
                <p>Full Name: <asp:Label ID="lblFullName" runat="server"></asp:Label></p>
                <p>Email: <asp:Label ID="lblEmail" runat="server"></asp:Label></p>
                                <p>Mobile No: <asp:Label ID="lblMobileNo" runat="server"></asp:Label></p>
                <p>Login ID: <asp:Label ID="lblUsername" runat="server"></asp:Label></p>

                <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" OnClick="btnEditProfile_Click" />
                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" OnClick="btnChangePassword_Click" />
            </asp:Panel>

            <asp:Panel ID="pnlEditProfile" runat="server" Visible="false">
                <h3>Edit Profile ✏️</h3>
                <p>New Full Name: <asp:TextBox ID="txtEditFullName" runat="server"></asp:TextBox></p>
                <p>New Email: <asp:TextBox ID="txtEditEmail" runat="server"></asp:TextBox></p>
                <p>New Mobile No: <asp:TextBox ID="txtEditMobileNo" runat="server"></asp:TextBox></p>
                
                <asp:Button ID="btnSaveProfile" runat="server" Text="Save" OnClick="btnSaveProfile_Click" />
                <asp:Button ID="btnCancelEdit" runat="server" Text="Back" OnClick="btnCancel_Click" />
                <asp:Label ID="lblProfileMessage" runat="server" ForeColor="Green"></asp:Label>
            </asp:Panel>

            <asp:Panel ID="pnlChangePassword" runat="server" Visible="false">
                <h3>Change Password 🔑</h3>
                <p>Old Password: <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox></p>
                <p>New Password: <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox></p>
                <p>Confirm Password: <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox></p>
                
                <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" OnClick="btnUpdatePassword_Click" />
                <asp:Button ID="btnCancelChangePass" runat="server" Text="Back" OnClick="btnCancel_Click" />
                <asp:Label ID="lblPasswordMessage" runat="server" ForeColor="Green"></asp:Label>
            </asp:Panel>
            
            <hr />

            <h3>Exam History 📜</h3>
            <asp:GridView ID="gvExamHistory" runat="server" AutoGenerateColumns="true" EmptyDataText="You have not attempted any exams yet.">
            </asp:GridView>
        </div>

</asp:Content>
<asp:Content ID="Content7" runat="server" contentplaceholderid="ContentPlaceHolder3">

                <!-- footer section -->
                <footer class="footer-section spad pb-0">
                    <div class="footer-top">
                        <div class="footer-warp">
                            <div class="row">
                                <div class="widget-item">
                                    <h4>Contact Info</h4>
                                    <ul class="contact-list">
                                        <li>1481 Creekside Lane
                                            <br>Avila Beach, CA 931</li>
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

