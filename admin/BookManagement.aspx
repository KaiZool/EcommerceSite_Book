<%@ Page Title="Admin Management| Curious Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookManagement.aspx.cs" Inherits="admin_BookManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Start, CSS Files -->
    <link rel="stylesheet" type="text/css" href="css/cssadmin.css" />
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet">
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
                            <li><a href="bookcomics.aspx"> Comics </a></li>
                            <li role="separator" class="divider"></li>
                            <li><asp:HyperLink ID="lnkManga" NavigateUrl="~/bookmangas.aspx" runat="server"> Novels </asp:HyperLink> </li>
                            <li role="separator" class="divider"></li>
                            <li><asp:HyperLink ID="lnkNovels" NavigateUrl="~/booknovels.aspx" runat="server"> Novels </asp:HyperLink> </li>
                        </ul>
                </li>
            </ul>
            
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label></a></li>
                <li><a href="#"> Admin </a></li>
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
            <h2> Administration Panel </h2>
        </div>

    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="newbtn" PostBackUrl="~/admin/ManageBookDet.aspx">Add new book</asp:LinkButton>
    <asp:gridview runat="server" ID="gridBooks" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="sdsBooks" OnRowEditing="gridBooks_RowEditing" Width="100%" CssClass="gridviewbook">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="CatID" HeaderText="CatID" SortExpression="CatID" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="CoverArt" HeaderText="CoverArt" SortExpression="CoverArt" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:gridview>
    <asp:SqlDataSource ID="sdsBooks" runat="server" ConnectionString="<%$ ConnectionStrings:BookConnectionString %>" DeleteCommand="DELETE FROM [Book] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Book] ([CatID], [Title], [Price], [Description], [CoverArt], [Quantity]) VALUES (@CatID, @Title, @Price, @Description, @CoverArt, @Quantity)" SelectCommand="SELECT * FROM [Book]" UpdateCommand="UPDATE [Book] SET [CatID] = @CatID, [Title] = @Title, [Price] = @Price, [Description] = @Description, [CoverArt] = @CoverArt, [Quantity] = @Quantity WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CatID" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="CoverArt" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CatID" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Price" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="CoverArt" Type="String" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="newbtn" PostBackUrl="~/admin/ManageBookCat.aspx">Add new book cat</asp:LinkButton>
    <asp:gridview runat="server" ID="gridBooksCats" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="sdsBookCats" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:gridview>
    <asp:SqlDataSource ID="sdsBookCats" runat="server" ConnectionString="<%$ ConnectionStrings:BookConnectionString %>" DeleteCommand="DELETE FROM [BookCats] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BookCats] ([Title]) VALUES (@Title)" SelectCommand="SELECT * FROM [BookCats]" UpdateCommand="UPDATE [BookCats] SET [Title] = @Title WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

        <asp:button runat="server" text="Return to Home Page" ID="btnreturn" OnClick="btnreturn_click" />

         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="../script/jquery.min.js"></script>
        <noscript></noscript>
        <!-- It includes all compiled plugins (below), or include individual files as needed -->
        <script src="../script/bootstrap.min.js"></script> 
        <noscript></noscript>

</asp:Content>

