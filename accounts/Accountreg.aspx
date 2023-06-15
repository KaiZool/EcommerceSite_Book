<%@ Page Title="Registration Page| Curious Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Accountreg.aspx.cs" Inherits="accounts_Accountregister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Start, CSS Files -->
    <link rel="stylesheet" href="css/cssreglogin.css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet"/>
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
                            <li class="active"><asp:HyperLink ID="lnkreg" NavigateUrl="Accountreg.aspx" runat="server"> Register </asp:HyperLink> </li>
                             <li><asp:HyperLink ID="HyperLink1" runat="server"></asp:HyperLink></li>
                             <li><asp:HyperLink ID="lnklogin" NavigateUrl="Accountlogin.aspx" runat="server"> Login </asp:HyperLink></li>
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
    <table class="table" id="reg">
        <thead>
            <tr>
                <th data-toggle="true" colspan="3"> <h2> A new User? Welcome</h2>
                    <p> 
                        <asp:Literal ID="litState" runat="server"></asp:Literal>
                    </p></th>
            </tr>
        </thead>

        <tbody> 
            <tr> 
                <th> Enter your username: </th>
                <td class="col2"><asp:TextBox ID="txtboxuser4" runat="server" CssClass="txtuser4"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validuser4" runat="server" ErrorMessage="*Please enter username" ControlToValidate="txtboxuser4" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr> 
                <th> Enter your password: </th>
                <td class="col2"><asp:TextBox ID="txtboxpass3" runat="server" CssClass="txtpass4" TextMode="Password"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validpass3" runat="server" ErrorMessage="*Please enter your password" ControlToValidate="txtboxpass3" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr> 
                <th> Re-Enter your password: </th>
                <td><asp:textbox runat="server" ID="txtboxcpass3" CssClass="txtboxcpass3"></asp:textbox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validcpass" runat="server" ErrorMessage="*Please enter your password" ControlToValidate="txtboxcpass3" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

             <tr> 
                <th> Forename: </th>
                <td><asp:textbox runat="server" ID="txtboxFN" CssClass="txtboxcfn"></asp:textbox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="valiforename" runat="server" ErrorMessage="*Please enter your First Name" ControlToValidate="txtboxFN" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

             <tr> 
                <th> Surname: </th>
                <td><asp:textbox runat="server" ID="txtnoxSN" CssClass="txtboxsn"></asp:textbox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validsurname" runat="server" ErrorMessage="*Please enter your Family Name" ControlToValidate="txtnoxSN" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

             <tr> 
                <th> Address: </th>
                <td><asp:textbox runat="server" ID="txtaddress" CssClass="txtboxcaddress"></asp:textbox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validaddress" runat="server" ErrorMessage="*Please enter your Address" ControlToValidate="txtaddress" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr> 
                <th> Postal Code: </th>
                <td><asp:textbox runat="server" ID="txtpost" CssClass="txtboxpostcode"></asp:textbox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2"><asp:RequiredFieldValidator ID="validpostalcode" runat="server" ErrorMessage="*Please enter your Postal Code" ControlToValidate="txtpost" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td colspan="3">
                    <asp:button runat="server" text="Register" ID="btnReg" OnClick="btnregs2_click" />
                    <asp:button runat="server" text="Go To Login" ID="btnlogin" OnClick="btnlog2_click" />
                    <asp:button runat="server" text="Continue as anonymous" ID="Button2" OnClick="btnanonymmous_click" />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
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

