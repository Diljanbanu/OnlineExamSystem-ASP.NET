<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addSubject.aspx.cs" Inherits="WebUni_Project.admin.addSubject1" %>

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
        <style>
            .myGridView td {
                border-right: 1px solid #ccc; /* This adds a border to the right of each cell */
            }

            .myGridView th {
                border-right: 1px solid #ccc; /* This adds a border to the right of each header cell */
            }

            .myGridView .last-column {
                border-right: none; /* You can remove the border from the last column if you don't want it */
            }
        </style>
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
                            <h2 class="text-primary mb-4">Add Subject</h2>
                            <div class="alert alert-info d-none" role="alert" id="successMessage" runat="server">
                                Subject Added Successfully!
                            </div>

                            <%-- Using ASP.NET Panel instead of <form> tag to prevent nested forms issue --%>
                            <asp:Panel ID="pnlAddSubject" runat="server">
                                <div class="mb-3">
                                    <asp:Label ID="Label1" runat="server" Text="Subject Name" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtsnm" runat="server" CssClass="form-control" placeholder="e.g., ASP.NET (C#)"></asp:TextBox>
                                </div>
                                <div class="mb-3">
                                    <asp:Label ID="Label2" runat="server" Text="Description" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtdesc" runat="server" CssClass="form-control" placeholder="Brief description of the subject"></asp:TextBox>
                                </div>
                                <div class="mb-4">
                                    <asp:Label ID="Label3" runat="server" Text="Image" CssClass="form-label"></asp:Label>
                                    <%-- FileUpload control automatically uses its own styles unless explicitly styled --%>
                                    <asp:FileUpload ID="fldsubimg" runat="server" CssClass="form-control" />
                                </div>
                                <asp:Button ID="btnsub" class="btn btn-primary btn-lg w-100" runat="server" Text="Add Subject" OnClick="btnsub_Click" />
                            </asp:Panel>
                        </div>
                    </div>

                    <div class="table-responsive mt-5">
                        <h2 class="text-secondary mb-3">Existing Subjects</h2>
                        <asp:GridView ID="gvSub" runat="server" CssClass="table table-striped table-hover table-bordered shadow-sm" BorderStyle="Solid" BorderWidth="1px" CellPadding="8" CellSpacing="0" AutoGenerateColumns="False" DataKeyNames="Id">
                            <%-- Assuming 'Id' is the DataKeyName --%>
                            <Columns>
                                <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="50px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="SubjectName">
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("SubjectName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Description">
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Description") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="40%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" Height="80" Width="80" ImageUrl='<%# Eval("Image") %>' CssClass="img-thumbnail" />
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                    <HeaderStyle Width="100px" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_edt" CssClass="btn btn-sm btn-outline-primary" Text="Edit"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="cmd_dlt" CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Are you sure you want to delete this Subject?');">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="#0d6efd" ForeColor="White" Font-Bold="True" />
                            <RowStyle BackColor="#f8f9fa" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>

                        <%-- ✨ REPORT BUTTON ADDITION START ✨ --%>
                        <div class="mt-3 text-center">
                            <asp:Button ID="btnSubjectReport" runat="server" Text="Generate Subject Report 📊" CssClass="btn btn-success btn-lg" OnClick="btnSubjectReport_Click" />
                            <%-- Note: You will need to implement the btnSubjectReport_Click event handler in your CodeBehind file (addSubject.aspx.cs) --%>
                        </div>
                        <%-- ✨ REPORT BUTTON ADDITION END ✨ --%>

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

