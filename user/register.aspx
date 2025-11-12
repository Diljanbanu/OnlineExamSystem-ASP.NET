<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebUni_Project.user.register" %>

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
     <%--   <style>
            .registration-form .form-title h2 {
                color: #474747;
                font-size: 36px;
                margin-bottom: 10px;
            }

            .registration-form .form-title p {
                color: #878787;
                margin-bottom: 0;
            }

            .registration-section {
                background: #d82a4e;
                position: relative;
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 60px 0;
            }

            .registration-warp {
                max-width: 600px;
                width: 100%;
                margin: 0 auto;
                padding: 0 30px;
            }

            .registration-form {
                background: #fff;
                padding: 60px;
                border-radius: 8px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            }

                .registration-form .form-title {
                    text-align: center;
                    margin-bottom: 40px;
                }

                    .registration-form .form-title h2 {
                        color: #474747;
                        font-size: 36px;
                        margin-bottom: 10px;
                    }

                    .registration-form .form-title p {
                        color: #878787;
                        margin-bottom: 0;
                    }

            .form-group {
                margin-bottom: 27px;
            }

            .form-row {
                display: flex;
                gap: 15px;
            }

                .form-row .form-group {
                    flex: 1;
                }

            .registration-form input[type=text],
            .registration-form input[type=email],
            .registration-form input[type=tel],
            .registration-form input[type=password],
            .registration-form select {
                height: 57px;
                width: 100%;
                padding: 0 30px;
                border: none;
                font-size: 14px;
                font-weight: 500;
                background: #edf4f6;
                color: #474747;
                transition: all 0.3s;
            }

                .registration-form input[type=text]:focus,
                .registration-form input[type=email]:focus,
                .registration-form input[type=tel]:focus,
                .registration-form input[type=password]:focus,
                .registration-form select:focus {
                    border-bottom: 2px solid #d82a4e;
                    background: #e8f2f4;
                }

            .registration-form select {
                cursor: pointer;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                background-image: url("data:image/svg+xml;charset=UTF-8,<svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'><path fill='%23878787' d='M6 9L1.5 4.5h9L6 9z'/></svg>");
                background-repeat: no-repeat;
                background-position: right 20px center;
            }

            .registration-form .site-btn {
                width: 100%;
                padding: 17px 10px;
                font-size: 16px;
                margin-top: 20px;
            }

            .login-link {
                text-align: center;
                margin-top: 30px;
                padding-top: 20px;
                border-top: 1px solid #edf4f6;
            }

                .login-link p {
                    margin-bottom: 0;
                    color: #878787;
                }

                .login-link a {
                    color: #d82a4e;
                    text-decoration: none;
                    font-weight: 600;
                }

                    .login-link a:hover {
                        color: #c21e42;
                    }

            /* Radio Button List Container */
            .registration-form .form-group .aspNetDisabled,
            .registration-form .form-group table {
                width: 100%;
            }

            /* Individual Radio Button and Label */
            .registration-form .form-group input[type="radio"] {
                margin-right: 5px; /* Adjust space between radio button and label */
                vertical-align: middle; /* Align the radio button with the text */
            }

            .registration-form .form-group label {
                font-weight: 500;
                color: #474747;
                cursor: pointer;
                margin-right: 15px; /* Space between the 'Male' and 'Female' options */
            }
        </style>
    --%>

        <style>
            /* --- Registration Form Container Styles --- */
            .registration-form .form-title h2 {
                color: #474747;
                font-size: 36px;
                margin-bottom: 10px;
            }

            .registration-form .form-title p {
                color: #878787;
                margin-bottom: 0;
            }

            .registration-section {
                background: #d82a4e;
                position: relative;
                min-height: 100vh;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 40px 0;
            }

            .registration-warp {
                max-width: 600px;
                width: 100%;
                margin: 0 auto;
                padding: 0 30px;
            }

            .registration-form {
                background: #fff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            }

                .registration-form .form-title {
                    text-align: center;
                    margin-bottom: 40px;
                }

                    .registration-form .form-title h2 {
                        color: #474747;
                        font-size: 36px;
                        margin-bottom: 10px;
                    }

                    .registration-form .form-title p {
                        color: #878787;
                        margin-bottom: 0;
                    }

            /* --- Form Group and Icon Positioning (Change 1) --- */
            .form-group {
                margin-bottom: 15px;
                position: relative; /* CRUCIAL for icon positioning */
            }
            
            .registration-form .form-group .input-icon {
                position: absolute;
                top: 50%; 
                left: 15px; /* Adjust position from the left edge */
                transform: translateY(-50%); 
                color: #878787; 
                font-size: 16px;
                z-index: 10; /* Ensure icon is above the input field */
            }

            .form-row {
                display: flex;
                gap: 15px;
            }

                .form-row .form-group {
                    flex: 1;
                }

            .registration-form input[type=text],
            .registration-form input[type=email],
            .registration-form input[type=tel],
            .registration-form input[type=password],
            .registration-form select {
                height: 57px;
                width: 100%;
                /* Added padding-left to make space for the icon */
                padding: 0 30px 0 45px; 
                border: none;
                font-size: 14px;
                font-weight: 500;
                background: #edf4f6;
                color: #474747;
                transition: all 0.3s;
            }

                .registration-form input[type=text]:focus,
                .registration-form input[type=email]:focus,
                .registration-form input[type=tel]:focus,
                .registration-form input[type=password]:focus,
                .registration-form select:focus {
                    border-bottom: 2px solid #d82a4e;
                    background: #e8f2f4;
                }

            .registration-form select {
                cursor: pointer;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                background-image: url("data:image/svg+xml;charset=UTF-8,<svg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'><path fill='%23878787' d='M6 9L1.5 4.5h9L6 9z'/></svg>");
                background-repeat: no-repeat;
                background-position: right 20px center;
            }

            /* --- Register Button Styling (Change 2) --- */
            /* The .site-btn is targeted by the <asp:Button> CssClass */
            .registration-form .site-btn {
                width: 100%;
                padding: 17px 10px;
                font-size: 16px;
                margin-top: 20px;
                background: #d82a4e;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background-color 0.3s ease;
                text-align: center;
                display: block;
            }
            
            /* Hover effect for the button */
            .registration-form .site-btn:hover {
                background-color: #c21e42; /* Darker red on hover */
            }


            /* --- Login Link Styling (Change 3) --- */
            .login-link {
                text-align: center;
                margin-top: 20px;
                padding-top: 15px;
                border-top: 1px solid #edf4f6;
            }

                .login-link p {
                    margin-bottom: 0;
                    color: #878787;
                }

                .login-link a {
                    color: #d82a4e; /* Set to the primary red color from the form CSS */
                    text-decoration: none;
                    font-weight: 600;
                }

                    .login-link a:hover {
                        color: #c21e42;
                    }

            /* Radio Button List Container */
            .registration-form .form-group .aspNetDisabled,
            .registration-form .form-group table {
                width: 100%;
            }

            /* Individual Radio Button and Label */
            .registration-form .form-group input[type="radio"] {
                margin-right: 5px; 
                vertical-align: middle; 
            }

            .registration-form .form-group label {
                font-weight: 500;
                color: #474747;
                cursor: pointer;
                margin-right: 15px; 
            }
        </style>
    </head>
    <body>


        <%-- <!-- Header section -->
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
                        <a href="User/register.aspx" class="site-btn header-btn">Register</a>
                        <nav class="main-menu">
                            <ul>
                                <li><a href="User/index.aspx">Home</a></li>
                                <li><a href="User/about-us.aspx">About us</a></li>
                                <li><a href="User/courses.aspx">Courses</a></li>
                                <li><a href="User/contact.aspx">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </header>--%>
        <!-- Header section end -->


        <!-- Hero section -->
        <%--        <section class="hero-section set-bg" data-setbg="img/bg.jpg ">--%>
        <%--<section class="hero-section set-bg" data-setbg="img/page-bg/1.jpg">
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
        </section>--%>
        <!-- Hero section end -->
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
  <%-- <section class="registration-section">
        <div class="registration-warp">
            <div class="registration-form">
                <div class="form-title">
                    <h2>Register Here</h2>
                </div>
                
                
                <div class="form-group">
                    <span class="input-icon"><i class="fa fa-user"></i></span>
                    <asp:TextBox ID="txtfnm" placeholder="Name" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <span class="input-icon"><i class="fa fa-envelope"></i></span>
                    <asp:TextBox ID="txteml" placeholder="Email" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <span class="input-icon"><i class="fa fa-phone"></i></span>
                    <asp:TextBox ID="txtmbl" placeholder="Mobile Number" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:DropDownList ID="drpgen" runat="server">
                        <asp:ListItem Text="-- Select Gender --" Value=""></asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-row">
                    <div class="form-group">
                         <span class="input-icon"><i class="fa fa-lock"></i></span>
                        <asp:TextBox ID="txtpsw" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <span class="input-icon"><i class="fa fa-lock"></i></span>
                        <asp:TextBox ID="txtcpsw" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox>

                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtcpsw" ControlToCompare="txtpsw" Display="None" runat="server" ErrorMessage="Please Enter Same Password..."></asp:CompareValidator>
                    </div>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                
                <asp:Button ID="btnreg" runat="server" Text="Register" OnClick="btnreg_Click" />
                
                <div class="login-link">
                    <p style="color: #878787;">
                        If You Have Register.
                        <a href="login.aspx" style="color: #209f8c; text-decoration: none; font-weight: bold;">Login</a>
                    </p>
                </div>

            </div>
        </div>
    </section>--%>

    <section class="registration-section">
        <div class="registration-warp">
            <div class="registration-form">
                <div class="form-title">
                    <h2>Register Here</h2>
                </div>
                
                
                <div class="form-group">
                    <span class="input-icon"><i class="fa fa-user"></i></span>
                    <asp:TextBox ID="txtfnm" placeholder="Name" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <span class="input-icon"><i class="fa fa-envelope"></i></span>
                    <asp:TextBox ID="txteml" placeholder="Email" runat="server" Text="bnarola@gmail.com"></asp:TextBox>
                </div>

                <div class="form-group">
                    <span class="input-icon"><i class="fa fa-phone"></i></span>
                    <asp:TextBox ID="txtmbl" placeholder="Mobile Number" runat="server"></asp:TextBox>
                </div>

                <div class="form-group">
                    <asp:DropDownList ID="drpgen" runat="server">
                        <asp:ListItem Text="-- Select Gender --" Value=""></asp:ListItem>
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:DropDownList>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <span class="input-icon"><i class="fa fa-lock"></i></span>
                        <asp:TextBox ID="txtpsw" placeholder="Password" TextMode="Password" runat="server" Text=".........."></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <span class="input-icon"><i class="fa fa-lock"></i></span>
                        <asp:TextBox ID="txtcpsw" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox>

                        <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtcpsw" ControlToCompare="txtpsw" Display="None" runat="server" ErrorMessage="Please Enter Same Password..."></asp:CompareValidator>
                    </div>
                </div>

                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                
                <%-- Added CssClass="site-btn" for proper styling and hover effect --%>
                <asp:Button ID="btnreg" runat="server" Text="Register" OnClick="btnreg_Click" CssClass="site-btn" />
                
                <div class="login-link">
                    <p style="color: #878787;">
                        If You Have Register.
                        <%-- Removed inline style to use the CSS style from above --%>
                        <a href="login.aspx">Login</a>
                    </p>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

    <!-- footer section -->
    <%-- <footer class="footer-section spad pb-0">
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
    </html>--%>
</asp:Content>

