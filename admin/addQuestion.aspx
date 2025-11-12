<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="addQuestion.aspx.cs" Inherits="WebUni_Project.admin.addQuestion" %>

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
                    <li class="nav-item"><a href="attemptExams.aspx" class="nav-link">Attempts Exams </a></li>
                    <li class="nav-item"><a href="student.aspx" class="nav-link">Students</a></li>
                    <li class="nav-item"><a href="contact.aspx" class="nav-link">Contacts</a></li>
                    <li class="nav-item"><a href="index.aspx" class="nav-link">Logout</a></li>
                </ul>
            </nav>
            <main class="content flex-fill p-4">

                <div class="content-wrapper p-4">
                    <div class="form-section-container">
                        <div class="form-page">
                            <h2 class="text-primary mb-4">Add Question</h2>
                            <form>

                                <div class="mb-3">
                                    <asp:Label ID="Label17" runat="server" Text="Subject Name" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList ID="drpsub" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpsub_SelectedIndexChanged" CssClass="form-control">
                                        <asp:ListItem Value="0">--Select Subject--</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="mb-3">
                                    <asp:Label ID="Label1" runat="server" Text="Exam Name" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList ID="drpexam" runat="server" AutoPostBack="True" OnSelectedIndexChanged="drpexam_SelectedIndexChanged" CssClass="form-control">
                                        <asp:ListItem Value="0">--Select Exam--</asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="mb-3">
                                    <asp:Label ID="Label2" runat="server" Text="Question" CssClass="form-label"></asp:Label>
                                    <%-- 'form-select' is typically for DropDown, changed to 'form-control' for TextBox/TextArea --%>
                                    <asp:TextBox ID="txtque" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="Enter the main question text"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:Label ID="Label3" runat="server" Text="Option A" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txta" runat="server" CssClass="form-control" placeholder="Option A"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:Label ID="Label4" runat="server" Text="Option B" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtb" runat="server" CssClass="form-control" placeholder="Option B"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:Label ID="Label5" runat="server" Text="Option C" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtc" runat="server" CssClass="form-control" placeholder="Option C"></asp:TextBox>
                                </div>

                                <div class="mb-3">
                                    <asp:Label ID="Label6" runat="server" Text="Option D" CssClass="form-label"></asp:Label>
                                    <asp:TextBox ID="txtd" runat="server" CssClass="form-control" placeholder="Option D"></asp:TextBox>
                                </div>

                                <div class="mb-4">
                                    <asp:Label ID="Label7" runat="server" Text="Correct Answer" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList ID="drpCorrect" runat="server" CssClass="form-control">
                                        <asp:ListItem Value="0">--Select Correct Answer--</asp:ListItem>
                                        <asp:ListItem Text="A" Value="A"></asp:ListItem>
                                        <asp:ListItem Text="B" Value="B"></asp:ListItem>
                                        <asp:ListItem Text="C" Value="C"></asp:ListItem>
                                        <asp:ListItem Text="D" Value="D"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <asp:Button ID="btnque" runat="server" Text="Add Question" OnClick="btnque_Click" CssClass="btn btn-primary btn-lg w-100" />
                            </form>
                        </div>
                    </div>

                    <div class="table-responsive mt-5">
                        <h2 class="text-secondary mb-3">Existing Questions</h2>
                        <asp:GridView
                            ID="GridView1"
                            runat="server"
                            AutoGenerateColumns="False"
                            BorderStyle="Solid"
                            BorderWidth="1px"
                            CellPadding="8"
                            CellSpacing="0"
                            OnRowCommand="GridView1_RowCommand"
                            CssClass="table table-striped table-hover table-bordered shadow-sm">
                            <Columns>
                                <asp:TemplateField HeaderText="Id">
                                    <ItemTemplate>
                                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("mcqId") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Subject">
                                    <ItemTemplate>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("SubjectName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Exam">
                                    <ItemTemplate>
                                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("ExamName") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Question">
                                    <ItemTemplate>
                                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("Question") %>'></asp:Label>
                                    </ItemTemplate>
                                    <HeaderStyle Width="25%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Option A">
                                    <ItemTemplate>
                                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("OptionA") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Option B">
                                    <ItemTemplate>
                                        <asp:Label ID="Label12" runat="server" Text='<%# Eval("OptionB") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Correct Ans">
                                    <ItemTemplate>
                                        <asp:Label ID="Label15" runat="server" Text='<%# Eval("CorrectAns") %>' CssClass="badge bg-success"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Edit">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("mcqId") %>' CommandName="cmd_edt" CssClass="btn btn-sm btn-outline-primary">Edit</asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Delete">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("mcqId") %>' CommandName="cmd_dlt" CssClass="btn btn-sm btn-outline-danger" OnClientClick="return confirm('Are you sure you want to delete this Question?');">Delete</asp:LinkButton>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="#0d6efd" ForeColor="White" Font-Bold="True" />
                            <RowStyle BackColor="#f8f9fa" />
                            <AlternatingRowStyle BackColor="White" />
                        </asp:GridView>
                        <%-- Old <table> tag removed as GridView is already styled --%>
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

