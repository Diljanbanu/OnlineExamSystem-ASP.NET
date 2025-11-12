<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="About-Us.aspx.cs" Inherits="WebUni_Project.user.About_Us1" %>

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
                        <asp:LinkButton ID="lnkUser" runat="server" OnClick="lnkUser_Click" CssClass="profile-initial-link" Visible="false">
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
        </section>
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
   <section class="spad about-us-content">
    <div class="container">
        <div class="section-title text-center">
            <h2>About ExamPlatform: Redefining Assessment for a Digital World</h2>
            <p>The world of education is evolving, and so should the way we assess knowledge. ExamPlatform was born from a simple yet powerful idea: to make examinations more accessible, efficient, and secure for everyone. We are dedicated to digitizing the traditional exam process, breaking down geographical barriers, and empowering both educators and learners with a seamless, intuitive, and powerful online testing solution.</p>
        </div>
        
        <div class="row align-items-center" style="margin-bottom: 80px;">
            <div class="col-lg-6">
                <div class="placeholder-block">
                    🎯 Our Mission: Accessible Testing
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-text">
                    <h4>Our Mission: To Empower Through Fair and Accessible Testing</h4>
                    <p>Our primary mission is to **democratize the assessment process**. We believe that everyone deserves a fair chance to demonstrate their knowledge without the logistical hurdles of traditional exams. By eliminating the need for physical exam centers, paper usage, and manual correction, we save valuable time and resources for institutions while providing a stress-free experience for students. We are committed to upholding the integrity of exams while making them available to anyone, anywhere.</p>
                </div>
            </div>
        </div>

        <div class="row align-items-center" style="margin-bottom: 80px;">
            <div class="col-lg-6 order-lg-1 order-2">
                <div class="about-text">
                    <h4>From Frustration to Innovation: The Story Behind Our Platform</h4>
                    <p>Like many great ideas, ExamPlatform started with a problem. Our founders, a team of educators and tech enthusiasts, witnessed firsthand the challenges of the old system: the administrative nightmare of organizing exams, the environmental cost of millions of paper sheets, the slow turnaround time for results, and the geographical limitations that excluded deserving candidates. We knew there had to be a better way. We envisioned a platform that was not only technologically advanced but also simple to use, reliable, and fundamentally fair.</p>
                </div>
            </div>
            <div class="col-lg-6 order-lg-2 order-1">
                <div style="text-align: center;">
                     <div class="placeholder-block" style="height: 350px;">Innovation in Assessment</div>
                </div>
            </div>
        </div>

        <div class="row" style="margin-bottom: 80px;">
            <div class="col-lg-12">
                <div class="about-text text-center">
                    <h4 style="text-align: center;">A Smarter Way to Assess: Our Core Features</h4>
                    <p style="text-align: center; max-width: 900px; margin: 0 auto 30px auto;">We have built a robust platform designed to meet the diverse needs of modern education. Here’s what makes us different:</p>
                    
                    <div class="row text-left">
                        <div class="col-md-3">
                            <div class="about-text">
                                <ul>
                                    <li><strong>Complete Accessibility:</strong> Create, manage, and take exams from any device with an internet connection, breaking down physical barriers to education.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="about-text">
                                <ul>
                                    <li><strong>Automated Efficiency:</strong> Say goodbye to manual grading. Our system provides instant results and in-depth analytics, giving educators more time to focus on teaching.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="about-text">
                                <ul>
                                    <li><strong>Uncompromised Security:</strong> With features like timed exams, question shuffling, and secure browser technology, we ensure the integrity of every assessment.</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="about-text">
                                <ul>
                                    <li><strong>Eco-Friendly Solution:</strong> By going fully digital, we are proud to contribute to a more sustainable future, one exam at a time.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </div>
            </div>
        </div>

        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="placeholder-block" style="background-color: #474747; color: white;">
                    ✨ Vision: Future of Learning
                </div>
            </div>
            <div class="col-lg-6">
                <div class="about-text">
                    <h4>Shaping the Future of Learning</h4>
                    <p>Our journey doesn't end here. We envision a future where online assessment is seamlessly integrated with learning, providing **personalized feedback and adaptive learning paths** for students. We are constantly innovating, exploring AI-driven analytics and advanced proctoring to make our platform the gold standard for online examinations worldwide.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="call-to-action-section spad">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-7">
                <div class="call-to-action-wrap">
                    <div class="section-title text-left">
                        <h2 style="font-size: 40px; margin-bottom: 10px;">Exams, Reimagined.</h2>
                        <p style="font-size: 16px;">We are ExamPlatform. We make online testing simple, secure, and free. In today's fast-paced world, education shouldn't be held back by old methods. We created ExamPlatform to provide a clean, powerful, and intuitive platform for conducting online exams. Whether you're a teacher managing a classroom quiz or an organization conducting a large-scale assessment, our tool is designed to save you time and deliver reliable results.</p>
                    </div>
                    <div style="margin-top: 30px;" class="about-text">
                        <h4 style="margin-top: 0;">What Drives Us</h4>
                        <div class="row">
                            <div class="col-md-4">
                                <ul><li><strong>Simplicity:</strong> A powerful platform doesn’t need to be complicated. Our interface ensures a smooth experience.</li></ul>
                            </div>
                            <div class="col-md-4">
                                <ul><li><strong>Integrity:</strong> We believe in fair testing. Our security features are built to prevent cheating and ensure reliable results.</li></ul>
                            </div>
                            <div class="col-md-4">
                                <ul><li><strong>Accessibility:</strong> We are committed to breaking down barriers. Our platform is free and works on any device.</li></ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-5 text-center right-col">
                <div style="padding: 50px 0;">
                    <div class="section-title">
                        <h2 style="font-size: 36px; font-weight: 700; color: #474747;">Start Your Digital Journey</h2>
                    </div>
                    <p style="font-weight: 500; font-size: 1.1rem; margin-bottom: 30px; color: #878787;">Join thousands of users who have streamlined their assessment process. It’s free to begin and easy to grow.</p>
                    <a href="register.aspx" class="site-btn">Start for Free Today <i class="fa fa-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
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
                    <%--<div class="widget-item">
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
                                </div>--%>
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
