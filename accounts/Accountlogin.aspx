<%@ Page Title="Login Page| Curious Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Accountlogin.aspx.cs" Inherits="accounts_Accountlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Start, CSS Files -->
    <link rel="stylesheet" href="css/cssreglogin.css" />
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
                <li><a href="/default.aspx"> Home <span class="sr-only">(current)</span></a></li>
                <li><a href="/contact.aspx"> Contact </a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Books <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/BookProducts.aspx"> Our Books </a></li>
                        </ul>
                </li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label></a></li>
                <li><a href="/admin/BookManagement.aspx"> Admin </a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Account <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="active"></a><asp:HyperLink ID="lnkreg" NavigateUrl="~/accounts/Accountreg.aspx" runat="server"> Register </asp:HyperLink> </li>
                             <li><asp:HyperLink ID="litstate" runat="server"></asp:HyperLink></li>
                             <li><asp:HyperLink ID="lnklogin" NavigateUrl="~/accounts/Accountlogin.aspx" runat="server"> Login </asp:HyperLink> </li>
                             <li><asp:LinkButton ID="lnklogout" runat="server" OnClick="lnklogout_click">Log Out</asp:LinkButton></li>
                             <li role="separator" class="divider"></li>
                            <li><a href="#"> Cart </a></li>
                        </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- End, Nav Header -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
<div class="container table-responsive">
    <table class="table" id="login">
        <asp:Literal ID="litState2" runat="server"></asp:Literal>

        <thead>
            <tr>
                <th data-toggle="true" colspan="3"> <h2> Returning? Welcome Back</h2>
                    <p> 
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </p></th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <th> Enter your User Name: </th>
                <td class="col2"><asp:TextBox ID="txtUseName" runat="server" CssClass="txtboxusername"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2">
                    <asp:RequiredFieldValidator ID="validlogusername" runat="server" ErrorMessage="Please enter username" ControlToValidate="txtUseName"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <th> Password: </th>
                <td class="col2"><asp:TextBox ID="txtboxpass5" CssClass="txtboxpassword" runat="server"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2">
                    <asp:RequiredFieldValidator ID="validlogpass" runat="server" ErrorMessage="Please enter password" ControlToValidate="txtboxpass5"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td colspan="3">
                    <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_click" />
                    <asp:Button ID="btnreg3" runat="server" Text="Haven't Registered?" OnClick="btnreg3_click" />
                    <asp:Button ID="btnanony3" runat="server" Text="Continue as anonymous" OnClick="btnreturn_click" />
                </td>
            </tr>
        </tbody>
    </table>
</div>

         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="../script/jquery.min.js"></script>
        <noscript></noscript>
        <!-- It includes all compiled plugins (below), or include individual files as needed -->
        <script src="../script/bootstrap.min.js"></script> 
        <noscript></noscript>
</asp:Content>

