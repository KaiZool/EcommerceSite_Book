<%@ Page Title="Book Product| Curious Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookProducts.aspx.cs" Inherits="BookProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Start, CSS files -->
    <link rel="stylesheet" href="css/cssbookpro.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet">
<!-- End, CSS Files -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<!-- getbootstrap.com (n.d.). Default navbar [Codings]. Retrieved April 22, 2016 from: http://getbootstrap.com/components/#navbar -->
<!-- Start, Nav Header -->
<nav class="navbar navbar-default nav-bar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Curious Books</a>
        </div>
                
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="default.aspx"> Home <span class="sr-only">(current)</span></a></li>
                <li><a href="contact.aspx"> Contact </a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Books <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="active"><a href="BookProducts.aspx"> Our Books </a></li>
                        </ul>
                </li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label></a></li>
                <li><a href="admin/BookManagement.aspx"> Admin </a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Account <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><asp:HyperLink ID="lnkreg" NavigateUrl="~/accounts/Accountreg.aspx" runat="server"> Register </asp:HyperLink> </li>
                             <li><asp:HyperLink ID="litstate" runat="server"></asp:HyperLink></li>
                             <li><asp:HyperLink ID="lnklogin" NavigateUrl="accounts/Accountlogin.aspx" runat="server"> Login </asp:HyperLink> </li>
                             <li><asp:LinkButton ID="lnklogout" runat="server" OnClick="lnklogout_click">Log Out</asp:LinkButton></li>
                             <li role="separator" class="divider"></li>
                            <li><a href="ShopCart/ShopCart.aspx"> Cart </a></li>
                        </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- End, Nav Header -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Panel ID="pnlBooks" runat="server">
    </asp:Panel>
    <div id="clear"></div>
</asp:Content>

