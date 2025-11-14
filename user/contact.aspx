<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebUni_Project.user.Contact" %>

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
            /* Ensure the form section takes up the correct space */
            .contact-page .row {
                align-items: stretch;
            }

            /* Contact Form Warp (Red Background container on the left) */
            .contact-form-warp {
                background: #d82a4e; /* Primary red color background */
                padding: 45px;
                height: 100%;
                border-radius: 4px;
            }

                /* Ensure all text inside the warp is white */
                .contact-form-warp .section-title h2,
                .contact-form-warp .section-title p {
                    color: #fff !important; /* Force white text */
                    text-align: left;
                }

                .contact-form-warp .section-title {
                    margin-bottom: 30px;
                    padding: 0;
                }

            /* The actual form container (White background) */
            .contact-form {
                background: #fff; /* Keep the inputs white, even though they are inside the red area */
                padding: 30px;
                border-radius: 4px;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
                padding-top: 0; /* Adjust padding if needed */
            }

                /* --- CRITICAL FIXES FOR INPUTS --- */
                /* Input/Textarea Styling for ASP.NET TextBoxes */
                .contact-form input[type="text"],
                .contact-form input[type="email"],
                .contact-form textarea {
                    height: 57px;
                    width: 100% !important; /* CRITICAL: Force full width */
                    padding: 0 30px;
                    margin-bottom: 15px; /* Spacing between fields */
                    border: none;
                    font-size: 14px;
                    font-weight: 500;
                    background: #fff; /* White background for inputs inside the red warp */
                    display: block !important; /* CRITICAL: Forces each input onto a new line */
                    clear: both !important; /* CRITICAL: Clears any inherited floats from external CSS */
                    box-sizing: border-box;
                }

                /* Textarea specific height adjustment */
                .contact-form textarea {
                    height: 150px;
                    padding-top: 18px;
                    resize: vertical;
                    margin-bottom: 30px; /* Space before the button */
                }

                    /* Focus State (Red Border) */
                    .contact-form input:focus,
                    .contact-form textarea:focus {
                        border-bottom: 2px solid #d82a4e;
                        background: #fff;
                        outline: none;
                    }

                /* Button Styling */
                .contact-form .site-btn {
                    min-width: 200px;
                    display: inline-block;
                    margin-top: 0; /* Removed extra space */
                    /* Inherits colors from external CSS */
                }

            /* Banner Section (Right Side) */
            .banner-section.banner-contact-right {
                background: #edf4f6; /* Light gray background */
                padding: 45px 30px;
                height: 100%;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                border-radius: 4px;
                text-align: center;
            }

            /* Ensure text colors are correct inside the light banner section */
            .banner-contact-right h2 {
                color: #474747 !important;
            }

            .banner-contact-right p {
                color: #878787 !important;
                margin-bottom: 30px;
            }

            /* Responsive Fix: Stack columns on tablet/mobile */
            @media (max-width: 991px) {
                .contact-page .col-lg-7,
                .contact-page .col-lg-5 {
                    flex: 0 0 100%;
                    max-width: 100%;
                    margin-bottom: 30px;
                }
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
                        <asp:LinkButton ID="lnkRegister" runat="server" Text="Register" PostBackUrl="~/user/register.aspx" CssClass="site-btn header-btn" Visible="true" />
                        <asp:LinkButton ID="lnkUser" runat="server" CssClass="profile-initial-link" Visible="false">
                            <asp:Label ID="Label1" runat="server" Text="U" />
                        </asp:LinkButton><nav class="main-menu">
                            <ul>
                                <li><a href="Index.aspx">Home</a></li>
                                <li><a href="About-Us.aspx">About us</a></li>
                                <li><a href="Subject.aspx">Subjects</a></li>
                                <li><a href="MyExam.aspx">MyExam</a></li>
                                <li><a href="Contact.aspx">Contact</a></li>
                                <li><a href="Profile.aspx">Profile</a></li>

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
    <section class="contact-page spad pb-0">
        <div class="container">
            <div class="row">

                <div class="col-lg-7">
                    <div class="contact-form-warp" style="background: #d82a4e; padding: 45px; height: 100%; border-radius: 4px;">
                        <div class="section-title text-white text-left" style="margin-bottom: 30px; padding: 0;">
                            <h2 style="color: #fff !important;">Get in Touch</h2>
                            <p style="color: #fff !important;">We'd love to hear from you. Send us a message and we'll respond as soon as possible.</p>
                        </div>
                        <form class="contact-form">

                            <asp:TextBox ID="txtnm" runat="server" placeholder="Your Name"
                                Style="width: 90%; display: block; margin-bottom: 15px; box-sizing: border-box;"></asp:TextBox><asp:TextBox ID="txteml" runat="server" placeholder="Your E-mail"
                                    Style="width: 90%; display: block; margin-bottom: 15px; box-sizing: border-box;"></asp:TextBox><asp:TextBox ID="txtsub" runat="server" placeholder="Subject"
                                        Style="width: 90%; display: block; margin-bottom: 15px; box-sizing: border-box;"></asp:TextBox><asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" placeholder="Message"
                                            Style="width: 90%; display: block; height: 150px; padding-top: 18px; margin-bottom: 30px; resize: vertical; box-sizing: border-box;"></asp:TextBox><asp:LinkButton ID="btncon" CssClass="site-btn" runat="server"
                                                Style="min-width: 200px; display: inline-block;">
                            Send Message <i class="fa fa-paper-plane"></i>
                                            </asp:LinkButton>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5">
                    <section class="banner-section spad banner-contact-right"
                        style="background: #edf4f6; padding: 45px 30px; height: 100%; display: flex; flex-direction: column; justify-content: center; align-items: center; border-radius: 4px; text-align: center;">
                        <div class="section-title mb-0 pb-2">
                            <h2 style="color: #474747 !important;">Join Our Community Now!</h2>
                            <p style="color: #878787 !important; margin-bottom: 30px;">
                                Start your journey with us today. Get instant access to free exams and educational resources.
                            </p>
                        </div>
                        <div class="text-center pt-4">
                            <a href="register.aspx" class="site-btn">Register Now</a>
                        </div>
                    </section>
                </div>
            </div>
        </div>
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
