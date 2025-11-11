<%@ Page Title="" Language="C#" MasterPageFile="~/user/User.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebUni_Project.user.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
 
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <section>
        <center>
            <asp:DataList ID="dlfact" runat="server">
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
    </section>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder3">

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

