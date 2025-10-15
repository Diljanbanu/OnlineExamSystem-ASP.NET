<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebUni_Project.admin.contact" %>

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
                    <li class="nav-item"><a href="student.aspx" class="nav-link">Students</a></li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contacts</a></li>
                    <li class="nav-item"><a href="index.aspx" class="nav-link">Logout</a></li>
                </ul>
            </nav>
            <main class="content flex-fill p-4">
                <div class="content-wrapper p-4">

                    <h2 class="text-primary mb-4">Contact-Us Students</h2>

                    <div class="table-responsive mt-3">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="1px" CellPadding="8" CellSpacing="0" CssClass="table table-striped table-hover table-bordered shadow-sm">
                            <Columns>
                                <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Name">
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Email">
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Subject">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Subject") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Message">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Message") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="SubmissionDate">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("SubmissionDate") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <%-- Custom Header/Row styles added (compatible with your main CSS) --%>
                            <HeaderStyle BackColor="#0d6efd" ForeColor="White" Font-Bold="True" />
                            <RowStyle BackColor="#f8f9fa" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                    </div>

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

