<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="MCQ.aspx.cs" Inherits="WebUni_Project.user.MCQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!doctype html>
    <html>
    <head>
        <title>webuni - exam template</title>
        <meta charset="utf-8">
        <meta name="description" content="webuni education template">
        <meta name="keywords" content="webuni, education, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- favicon -->
        <link href="img/favicon.ico" rel="shortcut icon" />

        <!-- google fonts -->
        <link href="https://fonts.googleapis.com/css?family=raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link href="\css\style.css" rel="stylesheet" />

        <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\owl.carousel.css" rel="stylesheet" />
        <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\font-awesome.min.css" rel="stylesheet" />
        <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\admin.css" rel="stylesheet" />
        <link href="file:///c:\users\dell\source\repos\asp.net\onlineexamsystem\css\bootstrap.min.css" rel="stylesheet" />

        <!--[if lt ie 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
        <style>
            /* =================================
------------------------------------
  WebUni - Education Template
  Version: 1.0
------------------------------------ 
/*----------------------------------------*/
            /* Template default CSS
/*----------------------------------------*/
            html,
            body {
                height: 100%;
                font-family: 'Raleway', sans-serif;
                -webkit-font-smoothing: antialiased;
                font-smoothing: antialiased;
            }

            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
                margin: 0;
                font-weight: 600;
                color: #474747;
            }

            h1 {
                font-size: 70px;
            }

            h2 {
                font-size: 36px;
            }

            h3 {
                font-size: 30px;
            }

            h4 {
                font-size: 24px;
            }

            h5 {
                font-size: 20px;
            }

            h6 {
                font-size: 16px;
            }

            p {
                font-size: 14.1px;
                color: #878787;
                line-height: 2.2;
                font-weight: 500;
            }

            img {
                max-width: 100%;
            }

            input:focus,
            select:focus,
            button:focus,
            textarea:focus {
                outline: none;
            }

            ::-webkit-input-placeholder {
                font-style: italic;
            }

            ::-ms-input-placeholder {
                font-style: italic;
            }

            :-ms-input-placeholder {
                font-style: italic;
            }

            ::placeholder {
                font-style: italic;
            }

            a:hover {
                color: #d82a4e;
            }

            a:hover,
            a:focus {
                text-decoration: none;
                outline: none;
            }

            ul,
            ol {
                padding: 0;
                margin: 0;
            }

            /*---------------------
  Helper CSS
-----------------------*/

            .section-title {
                text-align: center;
                padding: 0 110px;
                margin-bottom: 110px;
            }

                .section-title h2 {
                    font-size: 48px;
                    font-weight: 600;
                    margin-bottom: 25px;
                }

                .section-title p {
                    margin-bottom: 0;
                    font-weight: 500;
                }

            .set-bg {
                background-repeat: no-repeat;
                background-size: cover;
                background-position: top center;
            }

            .spad {
                padding-top: 100px;
                padding-bottom: 115px;
            }

            .text-white h1,
            .text-white h2,
            .text-white h3,
            .text-white h4,
            .text-white h5,
            .text-white h6,
            .text-white p,
            .text-white span,
            .text-white li,
            .text-white a {
                color: #fff;
            }

            .rating i {
                color: #fbb710;
            }

            .rating .is-fade {
                color: #e0e3e4;
            }
            /*---------------------
  Commom elements
-----------------------*/
            /* buttons */

            .site-btn {
                display: inline-block;
                min-width: 196px;
                text-align: center;
                border: none;
                padding: 15px 10px;
                font-weight: 600;
                font-size: 16px;
                position: relative;
                color: #fff;
                cursor: pointer;
                background: #d82a4e;
                transition: background 0.3s; /* Added transition for hover effect */
            }

                .site-btn:hover {
                    color: #fff;
                    background: #c52646; /* Slightly darker on hover */
                }

                .site-btn.btn-dark {
                    background: #000;
                }

                .site-btn.btn-fade {
                    background: #e4edef;
                    color: #1f1f1f;
                }

            /* Preloder - (Omitted for brevity, assuming standard theme file) */

            /* Header section - (Omitted for brevity, assuming standard theme file) */

            /* Hero Section - (Omitted for brevity, assuming standard theme file) */

            /* Categories section - (Omitted for brevity, assuming standard theme file) */

            /* Search section - (Omitted for brevity, assuming standard theme file) */

            /* Course section */

            .course-warp {
                max-width: 1559px;
                padding: 0 15px;
                margin: 0 auto -30px;
            }

            .course-item {
                margin-bottom: 30px;
            }

                .course-item .course-thumb {
                    height: 270px;
                }

                    .course-item .course-thumb .price {
                        font-size: 14px;
                        color: #fff;
                        font-weight: 600;
                        background: #d82a4e;
                        display: inline-block;
                        padding: 13px 19px;
                        margin: 14px;
                    }

                .course-item .course-info {
                    background: #edf4f6;
                }

                    .course-item .course-info .course-text {
                        padding: 45px 33px 25px;
                    }

                        .course-item .course-info .course-text h5 {
                            margin-bottom: 5px;
                        }

                        .course-item .course-info .course-text .students {
                            font-size: 18px;
                            font-weight: 600;
                            color: #d82a4e;
                        }

            /* Specific styling for the test items (similar to .course-info but simplified) */
            .cl-item {
                border: 1px solid #d4dee1;
                background: #fff;
                margin-bottom: 30px;
                padding: 25px; /* Added padding */
            }

                .cl-item h4 {
                    margin-bottom: 15px;
                }

            .course-item .course-info .course-author {
                border-top: 1px solid #d4dee1;
                padding: 14px 33px;
                overflow: hidden;
            }

                .course-item .course-info .course-author .ca-pic {
                    width: 44px;
                    height: 44px;
                    border-radius: 50%;
                    float: left;
                }

                .course-item .course-info .course-author p {
                    padding-left: 60px;
                    margin-bottom: 0;
                    padding-top: 7px;
                    font-weight: 600;
                }

                    .course-item .course-info .course-author p span {
                        color: #d82a4e;
                    }

            /* Other Course Section elements (omitted for brevity) */

            /* Signup section - (Omitted for brevity) */

            /* Footer section - (Omitted for brevity) */

            /* Other Pages (Omitted for brevity) */

            /*------------------
  Custom MCQ/Form Styling Adjustments
---------------------*/

            /* Styling for the RadioButtonList output (which is a <table> in ASP.NET) */
            .options-list table {
                width: 100%;
            }

            .options-list td {
                padding: 8px 0;
            }

            /* Styling for the radio buttons and labels to look cleaner */
            .options-list input[type="radio"] {
                margin-right: 10px;
                /* Custom radio button styles if needed, or rely on browser/bootstrap */
            }

            .options-list label {
                font-weight: 500;
                color: #474747;
                cursor: pointer;
            }

            /* Ensure question separator lines (HR) look clean */
            .cl-item hr {
                border-top: 1px solid #d4dee1;
            }

            /* (Include the rest of your original CSS here, especially the parts that define utility classes like .spad, .text-center, etc.) */

            /* The rest of the original provided CSS goes here... */
        </style>
    </head>
    <body>


        <!-- Header section -->
        <%--<header class="header-section">
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
        </header>--%>
        <!-- Header section end -->


        <!-- Hero section -->
        <%--        <section class="hero-section set-bg" data-setbg="img/bg.jpg ">--%>
        <%-- <section class="hero-section set-bg" data-setbg="img/page-bg/1.jpg">
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
    <div class="container spad">
        <div class="section-title">
            <h2 class="text-center">MCQ Test</h2>
            <p>Please select the correct option for each question before submitting.</p>
        </div>

        <div class="row">
            <div class="col-lg-8 offset-lg-2">
                <div class="alert alert-danger text-center" role="alert" style="font-size: 1.5em; font-weight: bold;">
                    Remaining Time: <span id="timerDisplay">20:00</span>
                </div>

                <asp:DataList ID="dlmcq" runat="server" RepeatColumns="1" OnItemDataBound="dlmcq_ItemDataBound" CssClass="course-list">
                    <ItemTemplate>
                        <div class="cl-item">
                            <h4>
                                <asp:Label ID="lblQues" runat="server" Text='<%# Container.ItemIndex + 1 + ". " + Eval("Question") %>'></asp:Label>
                            </h4>

                            <div class="mb-4">
                                <asp:RadioButtonList ID="rblOptions" runat="server" RepeatDirection="Vertical" CssClass="form-check"></asp:RadioButtonList>
                            </div>

                            <asp:Label ID="lblCorrect" runat="server" Text='<%# Eval("CorrectAns") %>' Visible="false"></asp:Label>

                            <hr class="mt-4 mb-4" />
                        </div>
                    </ItemTemplate>
                </asp:DataList>

                <div class="text-center mt-5">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit Test" CssClass="site-btn" OnClick="btnSubmit_Click1" />
                </div>

                <div class="text-center mt-4 mb-5">
                    <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="Green"></asp:Label>
                </div>
                <div class="back-button-container">
                    <asp:Button ID="btnBackSub" runat="server" Text="Back to Subjects" Enabled="false" CssClass="btn-back" OnClick="btnBackSub_Click" />
                </div>

            </div>
        </div>
    </div>
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
    </footer>--%>
    <!-- footer section end -->


    <!--====== Javascripts & Jquery ======-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script>
        var totalSeconds = 1200; // 20 minutes * 60 seconds
        var timer;
        var submitButtonId = '<%= btnSubmit.ClientID %>'; // Get ASP.NET Client ID

        function startTimer() {
            timer = setInterval(updateTimer, 1000);
        }

        function updateTimer() {
            var minutes = Math.floor(totalSeconds / 60);
            var seconds = totalSeconds % 60;

            // Formatting the time to display MM:SS
            var displayMinutes = String(minutes).padStart(2, '0');
            var displaySeconds = String(seconds).padStart(2, '0');

            document.getElementById('timerDisplay').textContent = displayMinutes + ':' + displaySeconds;

            if (totalSeconds <= 0) {
                clearInterval(timer);
                // Time's up! Automatically click the submit button.
                document.getElementById(submitButtonId).click();
            } else {
                totalSeconds--;
            }
        }

        // Start the timer when the page is fully loaded (i.e., when exam is attempted)
        window.onload = startTimer;
</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    </html>
</asp:Content>

