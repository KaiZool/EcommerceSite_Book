<%@ Page Title="Book Details Management| Curious Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageBookDet.aspx.cs" Inherits="admin_ManageBookDet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Start, CSS files -->
    <link rel="stylesheet" type="text/css" href="css/cssadmin.css" />
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
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
                <li class="active"><a href="BookManagement.aspx"> Admin </a></li>
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
<div class="page-header">
    <h2> Admin Book Management </h2>
</div>
 
<div class="container table-responsive">
    <table class="table" id="adminman">
        <asp:Literal ID="litState2" runat="server"></asp:Literal>

        <thead>
            <tr>
                <th data-toggle="true" colspan="3"> <h2> Manage book Details </h2>
                    <p> 
                        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                    </p></th>
            </tr>
        </thead>

        <tbody>
            <tr>
                <th> Enter Book Title: </th>
                <td class="col2"><asp:TextBox ID="txtTitle" runat="server" CssClass="txtboxtitle"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2">
                    <asp:RequiredFieldValidator ID="validtitle" runat="server" ErrorMessage="Please enter book title" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <th> Category: </th>    
                <td><asp:DropDownList ID="DDCat" runat="server" DataSourceID="SqlDataSource1" DataTextField="Title" DataValueField="Id" Width="235px" CssClass="DDCatbox"></asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1430715_CO5027BookCatConnectionString %>" SelectCommand="SELECT * FROM [BookCats] ORDER BY [Title]"></asp:SqlDataSource>
                </td>
            </tr>

            <tr>
                <td colspan="3" class="row2">
                </td>
            </tr>
            
            <tr>
                <th> Enter Book Price: </th>
                <td class="col2"><asp:TextBox ID="txtPrice" runat="server" CssClass="txtboxprice"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2">
                    <asp:RequiredFieldValidator ID="validprice" runat="server" ErrorMessage="Please enter book title" ControlToValidate="txtPrice"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <th> Choose Book Image: </th>
                <td class="col2"><asp:DropDownList ID="DDCA" runat="server" CssClass="ddimg"></asp:DropDownList>
            </tr>

            <tr>
                <td colspan="3" class="row2">
                </td>
            </tr>

            <tr>
                <th> Enter Quantity: </th>
                <td class="col2"><asp:TextBox ID="txtQuantity" runat="server" CssClass="txtboxquantity"></asp:TextBox></td>
            </tr>

            <tr>
                <td colspan="3" class="row2">
                    <asp:RequiredFieldValidator ID="validquantity" runat="server" ErrorMessage="Please enter book title" ControlToValidate="txtQuantity"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <th> Enter Description: </th>
                <td class="col2"><asp:TextBox ID="txtDes" runat="server" Height="121px" TextMode="MultiLine" Width="366px" CssClass="txtboxdetails"></asp:TextBox>
            </tr>

             <tr>
                <td colspan="3" class="row2">
                    <asp:RequiredFieldValidator ID="validbookdes" runat="server" ErrorMessage="Please enter book title" ControlToValidate="txtDes"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td colspan="3" class="row2">    
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" ForeColor="Black" />
                    <asp:Button ID="btnreturn" runat="server" Text="Return" OnClick="btnreturn_Click" ForeColor="Black" />
                    <asp:Label runat="server" ID="lbloutcome"></asp:Label>
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

