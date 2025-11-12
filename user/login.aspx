<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebUni_Project.user.Login" %>

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
            /* General Body and Page Setup */
            body, html {
                margin: 0;
                padding: 0;
                height: 100%;
                font-family: Arial, Helvetica, sans-serif;
                background-color: #f0f2f5; /* A light gray background to make the form stand out */
            }

            /* Main container to center the form on the page */
            .login-section {
                width: 100%;
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
                box-sizing: border-box;
            }

            /* The main white box for the form content */
            .login-form-container {
                background: #fff;
                padding: 40px 40px;
                border-radius: 8px; /* Added for a modern look */
                box-shadow: 0 10px 40px rgba(0, 0, 0, 0.1);
                position: relative;
                width: 100%;
                max-width: 500px;
            }

                /* Decorative top border using a pseudo-element */
                .login-form-container::before {
                    content: '';
                    position: absolute;
                    top: 0;
                    left: 0;
                    right: 0;
                    height: 5px;
                    background: linear-gradient(45deg, #d82a4e, #e63946);
                    border-top-left-radius: 8px;
                    border-top-right-radius: 8px;
                }

            /* Form Title (Login) */
            .login-title {
                text-align: center;
                color: #474747;
                margin: 0 0 60px 0;
                font-size: 48px;
                font-weight: 700;
                text-transform: uppercase;
                letter-spacing: 2px;
            }

            /* Wrapper for each label and input field */
            .form-group {
                margin-bottom: 35px;
                position: relative;
            }

            /* Style for Labels (e.g., USERNAME:) */
            .form-label {
                display: block;
                margin-bottom: 12px;
                color: #474747;
                font-weight: 600;
                font-size: 18px;
                text-transform: uppercase;
                letter-spacing: 1px;
            }

            /* Style for TextBoxes (e.g., txtunm, txtpass) */
            .form-control {
                height: 65px;
                width: 100%;
                padding: 0 25px;
                border: 2px solid #edf4f6;
                font-size: 16px;
                font-weight: 500;
                background: #f8f9fa;
                box-sizing: border-box;
                outline: none;
                transition: all 0.3s ease;
                border-radius: 8px;
            }

                .form-control:focus {
                    border-color: #d82a4e;
                    background: #fff;
                    box-shadow: 0 0 0 3px rgba(216, 42, 78, 0.1);
                }

            /* Style for the Login Button */
            .btn-login {
                width: 100%;
                height: 65px;
                border: none;
                padding: 0 20px;
                font-weight: 700;
                font-size: 18px;
                color: #fff;
                cursor: pointer;
                background: linear-gradient(45deg, #d82a4e, #e63946);
                transition: all 0.3s ease;
                text-transform: uppercase;
                letter-spacing: 2px;
                border-radius: 8px;
                box-shadow: 0 4px 15px rgba(216, 42, 78, 0.3);
            }

                .btn-login:hover {
                    background: linear-gradient(45deg, #c02445, #d62c3a);
                    transform: translateY(-2px);
                    box-shadow: 0 6px 20px rgba(216, 42, 78, 0.4);
                }

                .btn-login:active {
                    transform: translateY(0);
                }

            /* Style for the status message label */
            .status-message {
                color: #d82a4e;
                font-size: 16px;
                margin-top: 20px;
                font-weight: 500;
                min-height: 24px;
            }

            /* Footer text section */
            .login-footer {
                text-align: center;
                margin-top: 50px;
                padding-top: 30px;
                border-top: 2px solid #edf4f6;
            }

                .login-footer p {
                    font-size: 18px;
                    color: #878787;
                    font-weight: 500;
                    margin: 0;
                    font-style: italic;
                    letter-spacing: 0.5px;
                }

                .login-footer .brand-name {
                    color: #d82a4e;
                    font-weight: 600;
                }

            /* Decorative accent at the bottom */
            .login-form-container::after {
                content: '';
                position: absolute;
                bottom: 20px;
                left: 50%;
                transform: translateX(-50%);
                width: 60px;
                height: 3px;
                background: #d82a4e;
                border-radius: 2px;
            }

            /*
  Disclaimer: This CSS code is based on the assumption that the HTML structure of your second image
  contains a main 'container' (login-container) with 'input fields' and a 'button' for the login form.
  You will need to use these class names in your HTML.
*/

            /* For the main login box */
            .login-container {
                /* 1. Frosted Glass Effect - This is the main change */
                backdrop-filter: blur(15px);
                -webkit-backdrop-filter: blur(15px); /* For Safari support */
                /* 2. Large border radius */
                border-radius: 25px;
                /* 3. Slightly transparent background */
                background-color: rgba(255, 255, 255, 0.1); /* Light transparent white to avoid a full color change */
                /* Other styles */
                padding: 40px;
                width: 350px; /* Change as needed */
                box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
                border: 1px solid rgba(255, 255, 255, 0.18);
                /* For centering */
                margin: auto;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
            }

                /* For input fields */
                .login-container input[type="text"],
                .login-container input[type="password"] {
                    /* 4. Remove border */
                    border: none;
                    /* 5. Slight border radius */
                    border-radius: 8px;
                    padding: 12px 15px;
                    margin-bottom: 20px;
                    width: 100%;
                    box-sizing: border-box;
                    /* Light transparent white/gray to avoid a full color change */
                    background-color: rgba(255, 255, 255, 0.2);
                    color: white; /* Text color */
                }

                /* For the button */
                .login-container button {
                    /* 6. Border radius for the button */
                    border-radius: 10px;
                    border: none;
                    padding: 15px;
                    width: 100%;
                    cursor: pointer;
                    font-weight: bold;
                    margin-top: 10px;
                    /* Adhering to the rule of 'no color change', just changing the look */
                    /* Use this if you want a gradient (If you need a gradient) */
                    background-image: linear-gradient(to right, #6a11cb 0%, #2575fc 100%);
                    color: white;
                }

                /* For the heading text */
                .login-container h2 {
                    color: white;
                    text-align: center;
                    margin-bottom: 30px;
                    font-family: sans-serif;
                }

            /* For the overall background */
            body {
                /* Setting this background will make the frosted effect look better */
                background: linear-gradient(135deg, #1f005c, #5b0060, #870160, #ac255e, #ca485c, #e16b5c, #f39060, #ffb568);
                height: 100vh;
                margin: 0;
                overflow: hidden;
                font-family: Arial, sans-serif;
            }
        </style>


    </head>
   <%-- <body>
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
        </section>--%>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section class="login-section">

        <div class="login-form-container">

            <h2 class="login-title">Login</h2>
            <div class="form-group">
                <asp:Label ID="lblunm" runat="server" Text="USERNAME:" CssClass="form-label"></asp:Label><asp:TextBox ID="txtunm" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Label ID="lblpass" runat="server" Text="PASSWORD:" CssClass="form-label"></asp:Label><asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnlogin_Click" />
                <%--                <asp:Button ID="btnlog" runat="server" CssClass="btn-login" Text="Login" />--%>
            </div>

            <div style="text-align: center;">
                <asp:Label ID="statusMessage" runat="server" CssClass="status-message"></asp:Label>
            </div>
            <div class="login-footer">
                <p>
                    <a href="register.aspx">Registration</a>
                </p>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
    <%--    <!-- footer section -->
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
    </html>--%>
</asp:Content>
