<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="Subject.aspx.cs" Inherits="WebUni_Project.user.Subject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>WebUni - Subjects & Exams</title>
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

    <style>
        /* ===================================
			MAIN HEADINGS & SECTION BASE
		==================================== */
        .section-title h2 {
            text-align: center;
            font-size: 42px;
            color: #474747;
            margin-bottom: 50px;
            font-weight: 600;
            position: relative;
            padding-bottom: 20px;
        }

        .section-title h2:after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: #d82a4e;
        }

        /* ===================================
			SUBJECT CARD STYLES
		==================================== */
        .subject-cards-container {
            padding: 60px 0;
            background: #f8f9fa;
        }

        /* Subject Card Item */
        .subject-card-item {
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.08);
            transition: all 0.4s ease;
            margin-bottom: 30px;
            position: relative;
            height: 100%;
            display: flex;
            flex-direction: column;
            min-height: 380px; /* થોડી ઓછી સાઈઝ */
        }

        .subject-card-item:hover {
            transform: translateY(-5px); /* ઓછો ઉછાળો */
            box-shadow: 0 10px 30px rgba(216, 42, 78, 0.15);
        }

        .subject-card-image {
            position: relative;
            overflow: hidden;
            height: 140px; /* ઓછી ઊંચાઈ */
            background: linear-gradient(#d82a4e 0%, #673ab7 100%);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .subject-card-image img {
            max-width: 80%;
            max-height: 80%;
            width: auto;
            height: auto;
            object-fit: contain;
            transition: transform 0.5s ease;
            display: block;
        }

        .subject-card-item:hover .subject-card-image img {
            transform: scale(1.02);
        }


        .subject-card-content {
            padding: 25px 20px;
            text-align: center;
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .subject-card-title {
            font-size: 22px; /* ફોન્ટ સાઈઝ ઘટાડી */
            min-height: 30px;
            display: block;
        }

        .subject-card-description {
            min-height: 60px; /* ઓછી ઊંચાઈ */
            font-size: 14px;
        }

        .subject-card-button {
            /* Inherit from site-btn style */
            display: inline-block;
            min-width: 100%;
            text-align: center;
            border: none;
            padding: 12px 10px;
            font-weight: 600;
            font-size: 15px;
            position: relative;
            color: #fff;
            cursor: pointer;
            background: #d82a4e;
            border-radius: 5px;
            transition: background 0.3s ease;
        }

        .subject-card-button:hover {
            background: #a8203f; /* Darker red on hover */
            color: #fff;
        }
        
        /* DataList Fix for Subject Cards (3 per row) */
        #<%= dlsub.ClientID %> {
            display: flex;
            flex-wrap: wrap;
            list-style: none;
            padding: 0;
            margin: 0 -15px;
            justify-content: center; /* Center align cards if less than a full row */
        }

        #<%= dlsub.ClientID %> > span {
            width: 33.333%;
            padding: 0 15px;
            box-sizing: border-box;
        }


        /* ===================================
			EXAM CARD STYLES - REFINED
		==================================== */
        .exam-cards-container {
            padding: 60px 0;
            /* Use a lighter, cleaner background */
            background: #edf4f6; 
            min-height: 500px;
        }

        .exam-cards-row {
            display: flex;
            flex-wrap: wrap;
            margin: 0 -15px;
            justify-content: center;
        }

        .exam-card-wrapper {
            width: 33.333%;
            padding: 0 15px;
            margin-bottom: 30px;
            display: flex;
        }

        .exam-card-item {
            background: #fff;
            border-radius: 15px;
            padding: 30px; /* થોડું ઓછું પેડિંગ */
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            min-height: 280px; /* પ્રોપર સાઈઝ માટે ઓછી મિનિ હાઈટ */
            height: auto;
            display: flex;
            flex-direction: column;
            width: 100%;
            box-sizing: border-box;
            border-top: 4px solid #d82a4e; /* થીમનો લાલ કલર */
        }

        .exam-card-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
        }

        .exam-card-header {
            text-align: center;
            margin-bottom: 25px;
        }

        .exam-card-name {
            font-size: 26px; /* મોટી સાઈઝ */
            color: #d82a4e; /* રેડ કલર */
            font-weight: 700;
        }

        .exam-card-meta {
            margin-bottom: 30px;
            padding-bottom: 15px;
            border-bottom: 1px dashed #e0e0e0;
            text-align: center;
        }

        .exam-meta-item {
            display: inline-block;
            margin: 0 15px;
            text-align: center;
        }

        .exam-meta-label {
            display: block;
            font-size: 14px;
            color: #878787;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .exam-meta-value {
            display: block;
            font-size: 20px;
            font-weight: 600;
            color: #474747;
        }
        .exam-card-actions {
    display: flex;
    flex-direction: column; /* બટનોને એકબીજાની નીચે રાખવા માટે */
    gap: 15px; /* બટનો વચ્ચેની જગ્યા */
    margin-top: auto;
}
        /*.exam-card-actions {
            display: flex;
            flex-direction: column;*/ /* બટનોને એકબીજાની નીચે રાખવા */
            /*gap: 15px;*/ /* બટનો વચ્ચેની જગ્યા */
            /*margin-top: auto;
        }*/

        .exam-btn-attempt, .exam-btn-add {
            /* Base style from site-btn */
            display: block;
            min-width: 100%;
            text-align: center;
            border: none;
            padding: 14px 15px;
            font-weight: 600;
            font-size: 15px;
            position: relative;
            color: #fff;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s ease, color 0.3s ease, box-shadow 0.3s ease;
        }

        .exam-btn-attempt {
            background: #d82a4e; /* Red primary button */
        }

        .exam-btn-attempt:hover {
            background: #a8203f; /* Darker red on hover */
            color: #fff;
        }

        .exam-btn-add {
            background: #474747; /* Dark secondary button */
        }

        .exam-btn-add:hover {
            background: #000; /* Black on hover */
            color: #fff;
        }

        /* Back Button Style */
        .btn-back {
            display: inline-block;
            min-width: 250px;
            text-align: center;
            border: 2px solid #d82a4e;
            padding: 12px 10px;
            font-weight: 600;
            font-size: 16px;
            color: #d82a4e;
            background: #fff;
            cursor: pointer;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .btn-back:hover {
            background: #d82a4e;
            color: #fff;
            text-decoration: none;
        }

        .back-button-container {
            text-align: center;
            margin-top: 50px;
        }

        /* Responsive Design */
        @media (max-width: 991px) {
            /* Tablets par 2 per row for Subjects */
            #<%= dlsub.ClientID %> > span {
                width: 50%;
            }
            /* Tablets par 2 per row for Exams */
            .exam-card-wrapper {
                width: 50%;
            }
        }

        @media (max-width: 767px) {
            /* Small mobile par 1 per row for Exams */
            .exam-card-wrapper {
                width: 100%;
            }
            .exam-card-item {
                min-height: auto;
            }
        }

        @media (max-width: 576px) {
            /* Small mobile par 1 per row for Subjects */
            #<%= dlsub.ClientID %> > span {
                width: 100%;
            }
            .subject-card-item {
                min-height: auto;
            }
            .exam-card-actions {
                flex-direction: column;
            }
        }
        /* ===================================
   EXAM CARD STYLES - REFINED (2 per row)
==================================== */
.exam-cards-container {
    padding: 60px 0;
    /* Use a lighter, cleaner background */
    background: #edf4f6;
    min-height: 500px;
}

/* DataList ને Flex Container બનાવો */
#<%= dlexam.ClientID %> {
    display: flex;
    flex-wrap: wrap; 
    list-style: none;
    padding: 0;
    margin: 0 -15px;
    justify-content: center; /* સેન્ટર અલાઈનમેન્ટ */
}

/* CRITICAL CHANGE: દરેક કાર્ડને 50% વિડથ આપો (એક લાઈનમાં 2) */
#<%= dlexam.ClientID %> > span {
    width: 50%; /* 2 કાર્ડ્સ પ્રતિ લાઇન */
    padding: 0 15px;
    box-sizing: border-box;
}

.exam-card-wrapper {
    width: 100%; /* span ની અંદર પૂરી પહોળાઈ લે */
    padding: 0;
    margin-bottom: 30px;
    display: flex;
}

.exam-card-item {
    background: #fff;
    border-radius: 15px;
    padding: 30px; 
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
    transition: all 0.4s ease;
    position: relative;
    overflow: hidden;
    min-height: 380px; 
    height: 100%;
    display: flex;
    flex-direction: column;
    width: 100%;
    box-sizing: border-box;
    border-top: 4px solid #d82a4e; 
}

.exam-card-item:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
}

.exam-card-actions {
    display: flex;
    flex-direction: column; 
    gap: 15px; 
    margin-top: auto; 
}

@media (max-width: 991px) {
    #<%= dlexam.ClientID %> > span {
        width: 50%;
    }
}

@media (max-width: 767px) {
    #<%= dlexam.ClientID %> > span {
        width: 100%;
    }
    .exam-card-item {
        min-height: auto;
    }
}
    </style>

</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
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
                    <a href="register.aspx" class="site-btn header-btn">Register</a>
                    <nav class="main-menu">
                        <ul>
                            <li><a href="index.aspx">Home</a></li>
                            <li><a href="about.aspx">About us</a></li>
                            <li class="active"><a href="Subject.aspx">Subjects</a></li>
                            <li><a href="MyExam.aspx">MyExam</a></li>
                            <li><a href="contact.aspx">Contact</a></li>
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
                <h2>Explore Subjects and Practice Exams</h2>
                <p>
                    Browse through our curated list of subjects and find the perfect online exam to test and improve your knowledge. Start your practice journey today!
                </p>
            </div>
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                </div>
            </div>
        </div>
    </section>
    </asp:Content>

<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">

    <section class="subject-cards-container spad">
        <div class="container">
            <asp:Panel ID="pnlsub" runat="server">
                <asp:DataList ID="dlsub" runat="server" OnItemCommand="dlsub_ItemCommand" RepeatColumns="1" RepeatLayout="Flow">
                    <ItemTemplate>
                        <div class="subject-card-item">
                            <div class="subject-card-image">
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' AlternateText='<%# Eval("SubjectName") %>' />
                                <div class="subject-card-overlay"></div>
                            </div>
                            <div class="subject-card-content">
                                <div>
                                    <h5 class="subject-card-title">
                                        <asp:Label ID="lblSubName" runat="server" Text='<%# Eval("SubjectName") %>'></asp:Label>
                                    </h5>
                                    <p class="subject-card-description">
                                        <asp:Label ID="lblDesc" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </p>
                                </div>
                                <asp:LinkButton ID="lnkViewExam" runat="server" CommandName="cmd_view" CommandArgument='<%# Eval("Id") %>' CssClass="subject-card-button" Text="View Exams"></asp:LinkButton>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </asp:Panel>
        </div>
    </section>
  
    <asp:Panel ID="pnlexam" runat="server" Visible="false">
    <div class="exam-cards-container">
        <div class="container">
            <div class="section-title">
                <h2>Available Exams</h2>
            </div>
            
            <div class="exam-cards-row">
                <asp:DataList ID="dlexam" runat="server" OnItemCommand="dlexam_ItemCommand" RepeatColumns="1" RepeatLayout="Flow">
                    <ItemTemplate>
                        <div class="exam-card-wrapper">
                            <div class="exam-card-item">
                                <div class="exam-card-content">
                                    <div class="exam-card-header">
                                        <h5 class="exam-card-name">
                                            <asp:Label ID="lblExamName" runat="server" Text='<%# Eval("ExamName") %>'></asp:Label>
                                        </h5>
                                    </div>

                                    <div class="exam-card-meta">
                                        <div class="exam-meta-item">
                                            <span class="exam-meta-label">Duration</span>
                                            <span class="exam-meta-value">
                                                <asp:Label ID="lblDur" runat="server" Text='<%# Eval("Duration") %>'></asp:Label> Minutes
                                            </span>
                                        </div>
                                        <div class="exam-meta-item">
                                            <span class="exam-meta-label">Total Marks</span>
                                            <span class="exam-meta-value">
                                                <asp:Label ID="lblMarks" runat="server" Text='<%# Eval("TotalMarks") %>'></asp:Label>
                                            </span>
                                        </div>
                                    </div>
                                    
                                    <div class="exam-card-actions">
                                        <asp:LinkButton ID="lnkAttempt" runat="server" CommandName="cmd_attemp" CommandArgument='<%# Eval("ExamId") %>' CssClass="exam-btn-attempt" Text="Attempt Now"></asp:LinkButton>
                                        <asp:LinkButton ID="lnkbtnAdd" runat="server" CommandName="cmd_add" CommandArgument='<%# Eval("ExamId") %>' CssClass="exam-btn-add" Text="Add to My Exams"></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
            
            <div class="back-button-container">
                <asp:Button ID="btnBackSub" runat="server" Text="Back to Subjects" CssClass="btn-back" OnClick="btnBackSub_Click" />
            </div>
        </div>
    </div>
</asp:Panel>



    </asp:Content>
<asp:Content ID="Content7" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">
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
    <script src="js/timer.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/circle-progress.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</asp:Content>