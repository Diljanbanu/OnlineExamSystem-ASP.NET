<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebUni_Project.user.Profile" %>

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
        <link href="img/favicon.ico" rel="shortcut icon" />
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link href="\css\style.css" rel="stylesheet" />
        <%-- [Optional Links Removed for Clarity] --%>
         <style>
        /* Small utility tweaks for profile labels (not overriding theme) */
        .profile-label { font-weight: 600; color: #474747; display:inline-block; min-width:120px; }
        .profile-value { color:#878787; font-weight:500; }
        .profile-header { display:flex; align-items:center; justify-content:space-between; gap:15px; flex-wrap:wrap; }
        .profile-card { padding:30px; border-radius:8px; background:#fff; box-shadow:0 6px 18px rgba(0,0,0,0.06); }
        .profile-actions { margin-top:12px; }
        .profile-actions .site-btn { margin-right:10px; }
        /* Make GridView full width inside container */
        .myGridView { width:100%; border-collapse:collapse; }
        .profile-initial { font-size:18px; width:56px; height:56px; line-height:56px; border-radius:50%; text-align:center; font-weight:700; }
        @media (max-width:767px) {
            .profile-label { display:block; min-width:0; margin-bottom:6px; }
        }
    </style>
    </head>
    <body>
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

                        <%--<asp:LinkButton ID="lnkRegister" runat="server" Text="Register" PostBackUrl="~/user/register.aspx" CssClass="site-btn header-btn" Visible="true" />--%>
                        <%--                                    <asp:LinkButton ID="lnkRegister" runat="server" Text="Register" />
                                    <asp:LinkButton ID="lnkUser" runat="server" OnClick="lnkUser_Click" CssClass="profile-initial-link" Visible="false">
                                        <asp:Label ID="Label1" runat="server" Text="U" />
                                    </asp:LinkButton>--%>

                        <%--<asp:LinkButton ID="lnkRegister" runat="server" Text="Register" PostBackUrl="~/user/register.aspx" />
                        <asp:LinkButton ID="lnkUser" runat="server" CssClass="profile-initial-link" Visible="false" >
                            <asp:Label ID="Label1" runat="server" Text="U" />--%>
                        </asp:LinkButton><nav class="main-menu">
                            <ul>
                                <li><a href="Index.aspx">Home</a></li>
                                <li><a href="About-Us.aspx">About us</a></li>
                                <li><a href="Subject.aspx">Subjects</a></li>
                                <li><a href="MyExam.aspx">MyExam</a></li>
                                <li><a href="Contact.aspx">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>
        <section class="hero-section set-bg" data-setbg="img/page-bg/1.jpg">
            <div class="container">
                <div class="hero-text text-white">
                    <h2>Get The Best Free Online Exams</h2>
                    <asp:Label ID="lblId" runat="server" Text=""></asp:Label><p>The primary aim of this system is to digitize the traditional exam process, making it faster, more efficient, and accessible from anywhere. It eliminates the need for physical exam centers, paper usage, and manual correction. </p>
                </div>
                <div class="row">
                    <div class="col-lg-10 offset-lg-1"></div>
                </div>
            </div>
        </section>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
  <section class="spad">
            <div class="container">
                <div class="section-title">
                    <h2>User Profile 🧑</h2>
                </div>

                <!-- Profile card -->
                <div class="profile-card">
                    <div class="profile-header">
                        <div>
                            <p><span class="profile-label">Full Name:</span>
                                <asp:Label ID="lblFullName" runat="server" CssClass="profile-value" /></p>

                            <p><span class="profile-label">Email:</span>
                                <asp:Label ID="lblEmail" runat="server" CssClass="profile-value" /></p>

                            <p><span class="profile-label">Mobile No:</span>
                                <asp:Label ID="lblMobileNo" runat="server" CssClass="profile-value" /></p>

                            <p><span class="profile-label">Login ID:</span>
                                <asp:Label ID="lblUsername" runat="server" CssClass="profile-value" /></p>
                        </div>

                       <%-- <!-- profile initial circle (uses theme .profile-initial-link styles) -->
                        <div style="text-align:right;">
                            <a href="#" class="profile-initial-link profile-initial" title="Profile"></a>
                            <div style="margin-top:8px;font-size:13px;color:#878787">Member since: <asp:Label ID="lblMemberSince" runat="server" CssClass="profile-value" /></div>
                        </div>--%>
                    </div>

                    <!-- action buttons -->
                    <div class="profile-actions" style="margin-top:18px;">
                        <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" CssClass="site-btn" OnClick="btnEditProfile_Click" />
                        <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="site-btn" OnClick="btnChangePassword_Click" />
                        <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="site-btn btn-dark" OnClick="btnLogout_Click" />
                    </div>
                </div>

                <!-- Edit profile panel (hidden by default in server side) -->
                <asp:Panel ID="pnlEditProfile" runat="server" Visible="false" style="margin-top:25px;">
                    <div class="signup-form">
                        <h3>Edit Profile ✏️</h3>
                        <p>New Full Name:
                            <asp:TextBox ID="txtEditFullName" runat="server" /></p>
                        <p>New Email:
                            <asp:TextBox ID="txtEditEmail" runat="server" /></p>
                        <p>New Mobile No:
                            <asp:TextBox ID="txtEditMobileNo" runat="server" /></p>

                        <asp:Button ID="btnSaveProfile" runat="server" Text="Save" CssClass="site-btn" OnClick="btnSaveProfile_Click" />
                        <asp:Button ID="btnCancelEdit" runat="server" Text="Back" CssClass="site-btn btn-fade" OnClick="btnCancel_Click" />
                        <asp:Label ID="lblProfileMessage" runat="server" ForeColor="Green" />
                    </div>
                </asp:Panel>

                <!-- Change password panel -->
                <asp:Panel ID="pnlChangePassword" runat="server" Visible="false" style="margin-top:25px;">
                    <div class="signup-form">
                        <h3>Change Password 🔑</h3>
                        <p>Old Password:
                            <asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password" /></p>
                        <p>New Password:
                            <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" /></p>
                        <p>Confirm Password:
                            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" /></p>

                        <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" CssClass="site-btn" OnClick="btnUpdatePassword_Click" />
                        <asp:Button ID="btnCancelChangePass" runat="server" Text="Back" CssClass="site-btn btn-fade" OnClick="btnCancel_Click" />
                        <asp:Label ID="lblPasswordMessage" runat="server" ForeColor="Green" />
                    </div>
                </asp:Panel>

                <hr style="margin-top:30px;margin-bottom:30px;border-top:2px solid #eee;" />

                <!-- Exam history -->
                <div>
                    <h3>Exam History 📜</h3>
                    <asp:GridView ID="gvExamHistory" runat="server" AutoGenerateColumns="true" EmptyDataText="You have not attempted any exams yet."
                        CssClass="myGridView" HeaderStyle-CssClass="gvHeader" RowStyle-CssClass="gvRow" />
                </div>
            </div> <!-- /.container -->
        </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <!-- footer section -->
    <footer class="footer-section spad pb-0">
        <div class="footer-top">
            <div class="footer-warp" style="display: flex; justify-content: space-evenly; width: 100%; max-width: 1559px; margin: 0 auto; padding: 0 50px;">

                <div class="widget-item" style="flex: 1;">
                    <h4>Contact Info</h4>
                    <ul class="contact-list">
                        <li>1481 Creekside Lane
                        <br>
                            Avila Beach, CA 931</li>
                        <li>+53 345 7953 32453</li>
                        <li>onlineexam@gmail.com</li>
                    </ul>
                </div>

                <div class="widget-item" style="flex: 1;">
                    <h4>Engeneering</h4>
                    <ul>
                        <li><a href="">Computer Engeneering</a></li>
                        <li><a href="">Software Engeneering</a></li>
                        <li><a href="">Informational Engeneering</a></li>
                        <li><a href="">System Engeneering</a></li>
                        <li><a href="">Mechanical Engineering</a></li>
                    </ul>
                </div>

                <div class="widget-item" style="flex: 1;">
                    <h4>Graphic Design</h4>
                    <ul>
                        <li><a href="">Brand Identity Designs</a></li>
                        <li><a href="">UI/UX Design</a></li>
                        <li><a href="">Motion Graphics</a></li>
                        <li><a href="">Editorial Design</a></li>
                        <li><a href="">Packaging Design</a></li>
                    </ul>
                </div>

                <div class="widget-item" style="flex: 1;">
                    <h4>Development</h4>
                    <ul>
                        <li><a href="">Web Development</a></li>
                        <li><a href="">Mobile App Development</a></li>
                        <li><a href="">Data Science</a></li>
                        <li><a href="">Cloud Development</a></li>
                        <li><a href="">DevOps Engineering</a></li>
                    </ul>
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
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                    All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i>by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
