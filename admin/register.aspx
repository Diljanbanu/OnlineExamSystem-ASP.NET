<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebUni_Project.admin.register" %>

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
                <div class="login-container">
                    <h2>Admin Registration</h2>
                    <form>
                        <div class="mb-3">
                            <%--                            <label>Full Name</label><input type="text" class="form-control">--%>
                            <asp:Label ID="Label1" runat="server" Text="Full Name"></asp:Label>
                            <asp:TextBox ID="txtfnm" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <%--                            <label>Email</label><input type="email" class="form-control">--%>
                            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="txteml" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <%--                            <label>Password</label><input type="password" class="form-control">--%>
                            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtpsw" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <%--                            <label>Confirm Password</label><input type="password" class="form-control">--%>
                            <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
                            <asp:TextBox ID="txtcpsw" runat="server"></asp:TextBox>

                        </div>
                        <%--                        <button type="submit" class="btn btn-success w-100">Register</button>--%>
                        <asp:Button ID="btnreg" runat="server" Text="Register" OnClick="btnreg_Click" />
                    </form>
                </div>
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

