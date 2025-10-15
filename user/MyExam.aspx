<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="MyExam.aspx.cs" Inherits="WebUni_Project.user.MyExam" %>

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
        /* My Exams Heading Styling */
        #ContentPlaceHolder2 h2 {
            font-size: 34px;
            font-weight: 700;
            color: #474747; /* Black/Dark Gray from the theme */
            margin-bottom: 25px;
            padding-top: 40px; /* થોડું ઉપરથી અંતર આપો */
        }

        /* GridView Styling (DataTable Look) */
        #<%= GridView1.ClientID %> {
            width: 80%; /* GridView ની પહોળાઈ સેટ કરો */
            margin: 0 auto;
            border-collapse: collapse; /* Borders ભેગા કરો */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* હળવો શેડો */
        }

        /* GridView Header Row */
        #<%= GridView1.ClientID %> th {
            background-color: #d82a4e; /* WebUni Theme's Red */
            color: #fff;
            font-weight: 600;
            padding: 15px 10px;
            text-align: left;
            font-size: 15px;
        }
        
        /* GridView Data Rows */
        #<%= GridView1.ClientID %> td {
            padding: 12px 10px;
            font-size: 14.1px;
            color: #474747; /* Dark Gray for text */
            line-height: 1.6;
            border-bottom: 1px solid #edf4f6; /* Light Grayish/White border from theme */
            background-color: #fff;
        }

        /* Alternate Row Color */
        #<%= GridView1.ClientID %> tr:nth-child(even) td {
            background-color: #f7f7f7; /* Very light gray for alternate rows */
        }

        /* Remove/LinkButton Styling */
        #<%= GridView1.ClientID %> a[commandname="cmd_remove"] {
            color: #d82a4e; /* WebUni Theme Red */
            font-weight: 600;
            text-decoration: none;
            transition: color 0.3s;
        }

        #<%= GridView1.ClientID %> a[commandname="cmd_remove"]:hover {
            color: #c02447; /* Slightly darker red on hover */
            text-decoration: underline;
        }

        /* Update Button Styling */
        #<%= btnUpdate.ClientID %> {
            display: inline-block;
            min-width: 196px;
            text-align: center;
            border: none;
            padding: 15px 30px; /* થોડી વધારે પેડિંગ */
            font-weight: 600;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
            background: #d82a4e; /* WebUni Theme's Red */
            transition: background-color 0.3s;
            margin-top: 20px; /* GridView થી થોડું અંતર */
            border-radius: 0; /* Theme પ્રમાણે ખૂણા sharp રાખો */
        }

        #<%= btnUpdate.ClientID %>:hover {
            background: #c02447; /* Hover effect */
            color: #fff;
        }
    </style>

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
                        <a href="User/register.aspx" class="site-btn header-btn">Register</a>
                        <nav class="main-menu">
                            <ul>
                                <li><a href="index.aspx">Home</a></li>
                                <li><a href="about.aspx">About us</a></li>
                                <li><a href="Subject.aspx">Subjects</a></li>
                                <li><a href="MyExam.aspx">MyExam</a></li>
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
                        The primary aim of this system is to digitize the traditional exam process, making it faster, more efficient, and accessible from anywhere. It eliminates the need for physical exam centers, paper usage, and manual correction.
                    </p>
                </div>
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero section end -->
</asp:Content>
<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <center>
        <h2>My Exams</h2>
        <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
               <%-- <asp:TemplateField HeaderText="UserId">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="SubjectName">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("SubjectName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ExamId">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("ExamId") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="AddedDate">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("AddedDate") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_remove">Remove</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
    </center>

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

