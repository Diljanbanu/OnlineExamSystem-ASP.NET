<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addFaculty.aspx.cs" Inherits="WebUni_Project.admin.addFaculty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
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
                    <div class="form-section-container">
                        <div class="form-page">
                            <h2 class="text-primary mb-4">Add Faculties</h2>
                            <form>
                                <div class="mb-3">
                                    <asp:Label ID="Label1" runat="server" Text="Professor Name" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtpnm" runat="server" CssClass="form-control" placeholder="e.g., Dr. Amit Patel"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label2" runat="server" Text="Description" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtdes" runat="server" CssClass="form-control" placeholder="e.g., Expert in Database Management Systems"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label3" runat="server" Text="Subject Name" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtsnm" runat="server" CssClass="form-control" placeholder="e.g., DBMS"></asp:TextBox>
                                </div>
                                <div class="mb-4">
                                    <asp:Label ID="Label4" runat="server" Text="Subject Expert" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtsex" runat="server" CssClass="form-control" placeholder="e.g., Networking"></asp:TextBox>
                                </div>
                                <div class="mb-4">
                                    <asp:Label ID="Label10" runat="server" Text="Professor Image" CssClass="form-label"></asp:Label>
                                    <asp:FileUpload ID="fldproimg" runat="server" CssClass="form-control" />
                                </div>

                                <asp:Button ID="btnPro" runat="server" Text="Add Faculties" CssClass="btn btn-primary btn-lg w-100" OnClick="btnPro_Click" />
                            </form>
                        </div>
                    </div>
                </div>


                <div class="table-responsive mt-5">
                    <h2 class="text-secondary mb-3">Faculties List</h2>
                    <asp:GridView ID="gvFact" runat="server" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="1px" CellPadding="8" CssClass="table table-striped table-hover table-bordered shadow-sm">
                        <Columns>
                            <asp:TemplateField HeaderText="Id">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Professor Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Pro_Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Decription">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Subject_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Subject Expert">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("Subject_Expert") %>'></asp:Label>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Edit">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" CssClass="btn btn-sm btn-outline-primary">Edit</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Delete">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt" CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Are you sure you want to delete this Exam?');">Delete</asp:LinkButton>
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="#0d6efd" ForeColor="White" Font-Bold="True" />
                        <RowStyle BackColor="#f8f9fa" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
<%--                    <asp:Button ID="btnRepo" runat="server" Text="Report" OnClick="btnRepo_Click" />--%>

                </div>
        </div>
    </main>

        </div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <footer class="bg-dark text-white text-center p-2">
        <p>
            &copy; 2025 Online Exam System
        </p>
    </footer>
    <script src="assets/js/script.js"></script>

</asp:Content>

