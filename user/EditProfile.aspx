<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebUni_Project.user.EditProfile" %>
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
                                <<%--div class="col-lg-9 col-md-9">
                                    <a href="User/register.aspx" class="site-btn header-btn">Register</a>
                                    <nav class="main-menu">--%><div class="col-lg-9 col-md-9">
                                    <asp:PlaceHolder ID="phAnonymous" runat="server" Visible="true"><a href="register.aspx" class="site-btn header-btn">Register</a></asp:PlaceHolder>
                                    <asp:PlaceHolder ID="phAuthenticated" runat="server" Visible="false">
                                        <div class="user-profile-dropdown" style="display: inline-block; position: relative;">
                                            <asp:LinkButton ID="lnkUserInitial" runat="server" CssClass="site-btn header-btn" 
                            OnClientClick="toggleDropdown(event)" 
                            Style="border-radius: 50%; width: 40px; height: 40px; padding: 0; line-height: 40px; text-align: center; font-size: 18px; text-transform: uppercase;">
                <asp:Label ID="lblUserInitial" runat="server" Text="U"></asp:Label>
            </asp:LinkButton>
                                            <div id="userDropdownContent" style="position: absolute; right: 0; background-color: white; min-width: 160px; box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2); z-index: 1000; display: none; text-align: left;">
                                                <div style="padding: 10px; border-bottom: 1px solid #eee; color: #333; font-size: 14px;">
                                                    Welcome,
                                                    <asp:Label ID="lblUsernameDisplay" runat="server" Font-Bold="true"></asp:Label>
                                                </div>
                                                <asp:HyperLink ID="lnkProfile" runat="server" NavigateUrl="~/user/Profile.aspx" CssClass="dropdown-item" Style="display: block; padding: 10px; text-decoration: none; color: #333;">
                    <i class="fa fa-user"></i> My Profile
                </asp:HyperLink>
                                                <asp:HyperLink ID="lnkEdit" runat="server" NavigateUrl="~/user/EditProfile.aspx" CssClass="dropdown-item" Style="display: block; padding: 10px; text-decoration: none; color: #333;">
                    <i class="fa fa-pencil"></i> Edit Profile
                </asp:HyperLink>
                                                <asp:LinkButton ID="btnLogout" runat="server" OnClick="btnLogout_Click" 
                                CssClass="dropdown-item" Style="display: block; padding: 10px; text-decoration: none; color: #d9534f;">
                    <i class="fa fa-sign-out"></i> Logout
                </asp:LinkButton>
                                            </div>
                                        </div>
                                    </asp:PlaceHolder>
                                    <nav class="main-menu">
                                        <ul>
                                            <li><a href="index.aspx">Home</a></li>
                                            <li><a href="about-us.aspx">About us</a></li>
                                            <li><a href="courses.aspx">Courses</a></li>
                                            <li><a href="contact.aspx">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>

<script type="text/javascript">
    function toggleDropdown(event) {
        event.preventDefault(); // Default action (like navigating) ને અટકાવે છે
        var dropdown = document.getElementById("userDropdownContent");
        dropdown.style.display = dropdown.style.display === "block" ? "none" : "block";
    }

    window.onclick = function (event) {
        if (!event.target.matches('.site-btn.header-btn') && !event.target.matches('.site-btn.header-btn *')) {
            var dropdown = document.getElementById("userDropdownContent");
            if (dropdown && dropdown.style.display === 'block') {
                dropdown.style.display = 'none';
            }
        }
    }
</script>
                                        <ul>
                                            <li><a href="User/index.aspx">Home</a></li>
                                            <li><a href="User/about-us.aspx">About us</a></li>
                                            <li><a href="User/courses.aspx">Courses</a></li>
                                            <li><a href="User/contact.aspx">Contact</a></li>
                                </ul>
                                   <%-- </nav>--%>
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

       <div class="container" style="padding-top: 50px; padding-bottom: 50px;">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="card shadow-sm">
                    <div class="card-header bg-primary text-white">
                        <h4 class="mb-0">Update Your Details</h4>
                    </div>
                    <div class="card-body">
                        
                        <div class="form-group">
                            <label for="<%= txtFullName.ClientID %>">Full Name:</label>
                            <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Email ID:</label>
                            <asp:Label ID="lblCurrentEmail" runat="server" CssClass="form-control-plaintext"></asp:Label>
                        </div>

                        <div class="form-group">
                            <label for="<%= txtNewPassword.ClientID %>">New Password (Optional):</label>
                            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                        </div>
                        
                        <div class="form-group">
                            <label for="<%= txtConfirmPassword.ClientID %>">Confirm Password:</label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match." ForeColor="Red"></asp:CompareValidator>
                        </div>

                        <asp:Label ID="lblMessage" runat="server" ForeColor="Green"></asp:Label>
                        
                        <div class="text-right">
                            <asp:Button ID="btnUpdate" runat="server" Text="Update Profile" CssClass="site-btn" OnClick="btnUpdate_Click" />
                            <asp:HyperLink ID="lnkCancel" runat="server" NavigateUrl="~/user/Profile.aspx" CssClass="site-btn" Style="background-color: #6c757d;">Cancel</asp:HyperLink>
                        </div>

                    </div>
                </div>
            </div>
        </div>
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

