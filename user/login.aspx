<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebUni_Project.user.login" %>

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
             padding: 80px 60px;
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
     </style>
    </head>
    <body>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <section class="login-section">

        <div class="login-form-container">

            <h2 class="login-title">Login</h2>

            <div class="form-group">
                <asp:Label ID="lblunm" runat="server" Text="USERNAME:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtunm" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>
            </div>

            <div class="form-group">
                <asp:Label ID="lblpass" runat="server" Text="PASSWORD:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>
            </div>

            <div class="form-group">
                <%--<asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn-login" />--%>
                <asp:Button ID="btnlog" runat="server" CssClass="btn-login" Text="Login" OnClick="btnlog_Click" />
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

    <%--<!-- footer section -->
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
    <!-- footer section end -->--%>


    <!--====== Javascripts & Jquery ======-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    </html>
</asp:Content>

