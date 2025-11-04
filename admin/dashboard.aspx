<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="WebUni_Project.admin.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Students</title>
        <link rel="stylesheet" href="assets/css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    </head>
    <body>
        <header class="bg-dark text-white p-3 text-center">
            <h1>Online Exam System - Admin Panel</h1>
        </header>
        <div class="d-flex">
            <nav class="sidebar bg-light p-3">
                <h2>Menu</h2>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="dashboard.aspx" class="nav-link">Dashboard</a></li>
                    <li class="nav-item"><a href="addSubject.aspx" class="nav-link">Add Subject</a></li>
                    <li class="nav-item"><a href="addExam.aspx" class="nav-link">Add Exam</a></li>
                    <li class="nav-item"><a href="addQuestion.aspx" class="nav-link">Add Question</a></li>
                    <li class="nav-item"><a href="addFaculty.aspx" class="nav-link">Add Faculties</a></li>
                    <li class="nav-item"><a href="student.aspx" class="nav-link">Students</a></li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contacts</a></li>
                    <li class="nav-item"><a href="index.aspx" class="nav-link">Logout</a></li>
                </ul>
            </nav>
            <main class="content flex-fill p-4">

                <div class="content-wrapper p-4">
                    <h2 class="text-primary mb-4 border-bottom pb-2">Admin Dashboard</h2>

                    <div class="row g-4 mb-5">

                        <div class="col-md-4 col-sm-6">
                            <div class="card shadow border-0 bg-info-subtle">
                                <div class="card-body">
                                    <h5 class="card-title text-info">Total Subjects</h5>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <asp:Label ID="lblTotalSubjects" runat="server" Text="--" CssClass="display-4 mb-0"></asp:Label>
                                        <i class="bi bi-book-fill fs-1 text-info"></i>

                                        [Image of a book icon]

                           
                                    </div>
                                    <small class="text-muted">Currently active</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-6">
                            <div class="card shadow border-0 bg-warning-subtle">
                                <div class="card-body">
                                    <h5 class="card-title text-warning">Total Exams</h5>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <asp:Label ID="lblTotalExams" runat="server" Text="--" CssClass="display-4 mb-0"></asp:Label>
                                        <i class="bi bi-patch-question-fill fs-1 text-warning"></i>
                                    </div>
                                    <small class="text-muted">Scheduled exams</small>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-12">
                            <div class="card shadow border-0 bg-success-subtle">
                                <div class="card-body">
                                    <h5 class="card-title text-success">Total Students</h5>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <asp:Label ID="lblTotalStudents" runat="server" Text="--" CssClass="display-4 mb-0"></asp:Label>
                                        <i class="bi bi-people-fill fs-1 text-success"></i>

                                        [Image of a group of people icon]

                           
                                    </div>
                                    <small class="text-muted">Registered users</small>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row g-4">

                        <div class="col-lg-4">
                            <div class="card shadow-sm border-0 h-100">
                                <div class="card-header bg-dark text-white">
                                    <h5 class="mb-0">Admin Login Details</h5>
                                </div>
                                <div class="card-body">
                                    <p class="mb-1"><strong>Username:</strong>
                                        <asp:Label ID="lblAdminUsername" runat="server" Text="Admin"></asp:Label></p>
                                    <p class="mb-1"><strong>Email:</strong>
                                        <asp:Label ID="lblAdminEmail" runat="server" Text="admin@exam.com"></asp:Label></p>
                                    <p class="mb-1"><strong>Last Login:</strong>
                                        <asp:Label ID="lblLastLogin" runat="server" Text="Loading..."></asp:Label></p>
                                    <hr>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-8">
                            <div class="card shadow-sm border-0 mb-4">
                                <div class="card-header">Exam Attempts (Last 7 Days)</div>
                                <div class="card-body">
                                    <canvas id="chart1" height="120"></canvas>
                                </div>
                            </div>

                            <div class="card shadow-sm border-0">
                                <div class="card-header">Student Registration Trend</div>
                                <div class="card-body">
                                    <canvas id="chart2" height="120"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </main>

            </main>
        </div>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <footer class="bg-dark text-white text-center p-2">
        <p>
            &copy; 2025 Online Exam System
        </p>
    </footer>
    <script src="assets/js/script.js"></script>

</asp:Content>

