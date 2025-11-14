<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebUni_Project.user.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

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
        /* Card Container Styling */
        .faculty-card-container {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 30px;
        }

        /* Individual Card Styling */
        .faculty-card {
            width: 300px; /* Card width */
            margin: 15px;
            padding: 20px;
            text-align: center;
            
            /* Light and Simple Styling */
            background-color: #ffffff; /* White background */
            border: 1px solid #e0e0e0; /* Light border */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Light shadow */
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .faculty-card:hover {
            transform: translateY(-5px); /* Lift effect on hover */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        /* Image Styling */
        .faculty-card img {
            width: 120px;
            height: 120px;
            border-radius: 50%; /* Circular image */
            object-fit: cover;
            margin-bottom: 15px;
            border: 3px solid #ff6347; /* Theme color border (Tomato) */
        }

        /* Text Styling */
        .faculty-card .pro-name {
            font-size: 1.25em;
            font-weight: 700;
            color: #333; /* Dark text for contrast */
            margin-bottom: 5px;
        }

        .faculty-card .description {
            color: #666;
            font-size: 0.9em;
            line-height: 1.4;
            margin-bottom: 10px;
            min-height: 60px; /* Fixed height for description */
        }

        .faculty-card .subject-info {
            font-size: 0.9em;
            color: #555;
            margin-top: 10px;
            padding-top: 10px;
            border-top: 1px dashed #e0e0e0;
        }

        .faculty-card .subject-expert {
             font-weight: 600;
             color: #ff6347; /* Highlight subject expert name */
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
                        <asp:LinkButton ID="lnkRegister" runat="server" Text="Register" PostBackUrl="register.aspx" CssClass="site-btn header-btn" Visible="true" />
                        <asp:LinkButton ID="lnkUser" runat="server" CssClass="profile-initial-link" Visible="false">
                            <asp:Label ID="lblUser" runat="server" Text="U"></asp:Label>
                        </asp:LinkButton>
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
        </header>
        <section class="hero-section set-bg" data-setbg="img/page-bg/1.jpg">
            <div class="container">
                <div class="hero-text text-white">
                    <h2>Get The Best Free Online Exams</h2>
                    <asp:Label ID="lblId" runat="server" Text=""></asp:Label>
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
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

<%--    <section>
        <center>
            <asp:DataList ID="dlfact" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Pro_Name") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Subject_Name") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Subject_Expert") %>'></asp:Label>
                </ItemTemplate>

            </asp:DataList>
        </center>
    </section>--%>

   <section>
        <div class="container faculty-card-container">
            <asp:DataList ID="dlfact" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" CellSpacing="20">
                <ItemTemplate>
                    <div class="faculty-card">
                        <%-- Image --%>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                        
                        <%-- Professor Name --%>
                        <asp:Label ID="Label1" runat="server" CssClass="pro-name" Text='<%# Eval("Pro_Name") %>'></asp:Label>
                        
                        <%-- Description (Main Text) --%>
                        <asp:Label ID="Label2" runat="server" CssClass="description" Text='<%# Eval("Description") %>'></asp:Label>
                        
                        <div class="subject-info">
                            <%-- Subject Name --%>
                            <p>Subject: <asp:Label ID="Label3" runat="server" Text='<%# Eval("Subject_Name") %>'></asp:Label></p>
                            
                            <%-- Subject Expert --%>
                            <p>Expertise: <asp:Label ID="Label4" runat="server" CssClass="subject-expert" Text='<%# Eval("Subject_Expert") %>'></asp:Label></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </section>


</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

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

