<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebUni_Project.admin.index1" %>

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
        <%--<div class="d-flex">
            <nav class="sidebar bg-light p-3">
                <h2>Menu</h2>
                <ul class="nav flex-column">
                    <li class="nav-item"><a href="dashboard.aspx" class="nav-link">Dashboard</a></li>
                    <li class="nav-item"><a href="addSubject.aspx" class="nav-link">Add Subject</a></li>
                    <li class="nav-item"><a href="addExam.aspx" class="nav-link">Add Exam</a></li>
                    <li class="nav-item"><a href="addQuestion.aspx" class="nav-link">Add Question</a></li>
                    <li class="nav-item"><a href="student.aspx" class="nav-link">Students</a></li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contacts</a></li>
                    <li class="nav-item"><a href="index.aspx" class="nav-link">Logout</a></li>
                </ul>
            </nav>--%>
            
               <div class="login-container">
                  
                     <%--<form>
                        <div class="mb-3">
                            <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                            <asp:TextBox ID="txteml" runat="server"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                            <asp:TextBox ID="txtpsw" runat="server"></asp:TextBox>

                        </div>
                        <asp:Button ID="btnlog" runat="server" Text="Login" />
                        <p class="mt-3 text-center">No account? <a href="register.aspx">Register</a></p>
                    </form>
                </div>--%>
       <%-- <main class="content flex-fill p-4">
    <h2 style="text-align: center; margin-bottom: 2rem;">Admin Login</h2>
    <div style="display: flex; justify-content: center;">
        <form style="width: 100%; max-width: 400px; padding: 2rem; background-color: #ffffff; border: 1px solid #ced4da; border-radius: 0.5rem; box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);">
            <div style="display: flex; flex-direction: column; gap: 1rem;">
                <div style="display: flex; flex-direction: column;">
                    <asp:Label ID="Label1" runat="server" Text="Email" style="margin-bottom: 0.5rem; font-weight: bold;"></asp:Label>
                    <asp:TextBox ID="txteml" runat="server" style="width: 100%; padding: 0.5rem; border: 1px solid #ccc; border-radius: 0.25rem;"></asp:TextBox>
                </div>
                <div style="display: flex; flex-direction: column;">
                    <asp:Label ID="Label2" runat="server" Text="Password" style="margin-bottom: 0.5rem; font-weight: bold;"></asp:Label>
                    <asp:TextBox ID="txtpsw" runat="server" TextMode="Password" style="width: 100%; padding: 0.5rem; border: 1px solid #ccc; border-radius: 0.25rem;"></asp:TextBox>
                </div>
                <asp:Button ID="btnlog" runat="server" Text="Login" style="width: 100%; padding: 0.75rem; background-color: #0d6efd; color: white; border: none; border-radius: 0.25rem; cursor: pointer;" OnClick="btnlog_Click"></asp:Button>
            </div>
        </form>
    </div>
<%--    <p style="text-align: center; margin-top: 1rem;">No account? <a href="register.aspx" style="color: #0d6efd; text-decoration: none;">Register</a></p>

            </main>--%>
        <main class="content flex-fill p-4">
            <h2 style="text-align: center; margin-bottom: 2rem;">Admin Login</h2>
            <div style="display: flex; justify-content: center;">
                
                <div style="width: 100%; max-width: 400px; padding: 2rem; background-color: #ffffff; border: 1px solid #ced4da; border-radius: 0.5rem; box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);">
                    <div style="display: flex; flex-direction: column; gap: 1rem;">
                        <div style="display: flex; flex-direction: column;">
                            <asp:Label ID="Label1" runat="server" Text="Email" style="margin-bottom: 0.5rem; font-weight: bold;"></asp:Label>
                            <asp:TextBox ID="txteml" runat="server" style="width: 100%; padding: 0.5rem; border: 1px solid #ccc; border-radius: 0.25rem;"></asp:TextBox>
                        </div>
                        <div style="display: flex; flex-direction: column;">
                            <asp:Label ID="Label2" runat="server" Text="Password" style="margin-bottom: 0.5rem; font-weight: bold;"></asp:Label>
                            <asp:TextBox ID="txtpsw" runat="server" TextMode="Password" style="width: 100%; padding: 0.5rem; border: 1px solid #ccc; border-radius: 0.25rem;"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnlog" runat="server" Text="Login" style="width: 100%; padding: 0.75rem; background-color: #0d6efd; color: white; border: none; border-radius: 0.25rem; cursor: pointer;" OnClick="btnlog_Click"></asp:Button>
                    </div>
                </div>
                
            </div>
        </main>
        </div>
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <%--<footer class="bg-dark text-white text-center p-2">
        <p>
            &copy; 2025 Online Exam System
        </p>--%>
    </footer>
    <script src="assets/js/script.js"></script>

</asp:Content>

