<%@ Page Title="Default Page| Curious Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="_default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <!-- Website: http://1430715.studentwebserver.co.uk/CO5027/ -->
    <!-- Github Respository: https://github.com/liyanakz94/CO5027_1430715_AssignmentLiyana.git Linked using Project.
         Github Repository: https://github.com/liyanakz94/CO5027_1430715_Assignment_Liyana/tree/master/CO5027_1430715 after the conversion from project to website-->
    <!-- Start, CSS files -->
    <link rel="stylesheet"type="text/css" href="css/cssdefault.css" />
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<!-- End, CSS Files -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!-- For part 3 of the the website, most were learned from the tutorials created by Michiel, W ->
    <!-- Michiel, W. (2014, April 18). Create a webshop with Asp.Net [Video]. Retrieved from: https://www.youtube.com/watch?v=sXS2lX7XdOs&list=PLi5N5AdsklLbrs_7GAOAmmgnbKT042-U9 -->
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
                <li class="active"><a href="default.aspx"> Home <span class="sr-only">(current)</span></a></li>
                <li><a href="contact.aspx"> Contact </a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Books <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="BookProducts.aspx"> Our Books </a></li>
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
    <!-- Start, Products -->       
<hr class="separator">
    <div class="page-header">
        <h2> View our Categories </h2>
    </div>
<hr/>
    
    <div class="row">
        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="thumbnail">
                <a href="BookProducts.aspx"><img src="images/1585032-713259.png" alt="deadpool vs wolverine" width="250" height="350"/></a>
                 <!-- Pikahyper. (2010). Wolverine and Deadpool [Online Image]. Retrieved March 30, 2016, from: http://comicvine.gamespot.com/wolverine-and-deadpool/4050-36793/?page=2 -->
                    <div class="caption">
                        <h3> Comics and Graphic Novels </h3>
                        <p> Please click on the image above to view our Comics Collection </p>
                    </div>
            </div>
        </div>

        <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="thumbnail">
                <a href="BookProducts.aspx"><img class="top" src="images/SnK_-_Manga_Volume_1(1).png" alt="Attack on Titans Manga Vol 1" width="250" height="350"/></a>
                <!-- scopedog0083. (n.d.). SHINGEKI NO KYOJIN ATTACK ON TITAN HAJIME ISAYAMA JAPANESE MANGA BOOK VOL.1 [Online Image]. Retrieved March 30, 2016 from: http://www.ebay.com/itm/SHINGEKI-NO-KYOJIN-ATTACK-ON-TITAN-HAJIME-ISAYAMA-JAPANESE-MANGA-BOOK-VOL-1-/200914924214 -->
                    <div class="caption">
                        <h3> Manga </h3>
                        <p> Please click on the image above to view our Manga Collection </p>
                    </div>
                </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="thumbnail">
                    <a href="BookProducts.aspx"><img src="images/830502.png" alt="IT novel" width="250" height="350"/></a>
                    <!-- It [Online Image]. (n.d.). Retrieved April 2, 2016, from: http://www.goodreads.com/book/show/830502.It -->
                        <div class="caption">
                            <h3>Novel</h3>
                                <p> Please click on the image above to see our Novel Collection </p>
                        </div>
                </div>
            </div>
    </div>
<!-- End, Products -->
   
<div class="container">
    <div class="page-header">
        <h1> Popular Books </h1>
    </div>

    <div class="row pro">
        <div class="col-md-3 col-sm-6 col-xs-12">
                <h2> Star Wars Darth Maul: Son of Dathomir #1 </h2>
                <img src="images/Darth_Maul_Son_of_Dathomir_TPB.png" alt="Star Wars Son Of Dathomir" class="img-rounded" width="150" height="250"/>
                <!-- Rhea, B. (n.d.). Star Wars: Darth Maul [Online Image]. Retrieved from: http://starwars.wikia.com/wiki/Star_Wars:_Darth_Maul%E2%80%94Son_of_Dathomir -->
                <p> Writer: Jeremy Barlow </p>
                <p> Artist(s): Juan Frigeri, Mauro Vargas, Wes Dzioba nad Chris Scalf </p>
                <p> Publisher: Dark Horse Comics </p>
                <p> Price: $ 19 </p>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <h2> Batman: A death in the family </h2>
            <img src="images/Batman_A_Death_in_the_Family.jpg" alt="Batman - A death in the family" class="img-rounded" width="150" height="250"/>
            <!-- Doomlurker. Batman Death in The Family TPB cover.jpg [Online Image]. (n.d.). Retrieved April 2, 2016, from:  http://batman.wikia.com/wiki/Batman:_A_Death_in_the_Family?file=Batman_A_Death_in_the_Family.jpg -->
            <p> Writer: Jim Starlin </p>
            <p> Artist(s): Jim Aparo, Mike DeCarlo, John Costanza and Adrienne Roy </p>
            <p> Publisher: DC Comics </p>
            <p> Price: $ 21 </p>
        </div>
                 
        <div class="col-md-3 col-sm-6 col-xs-12">
            <h2> The Walking Dead Issue #100 </h2>
            <img src="images/Twd100cover_adlard.jpg" alt="the walking dead issues 100" class="img-rounded" width="150" height="250"/>
            <!-- Ivan16. (2012). Twd100cover adlard.jpg [Online Image]. (n.d). Retrieved April 10, 2016, from: http://walkingdead.wikia.com/wiki/File:Twd100cover_adlard.jpg -->
            <p> Writer: Robert Kirkman </p>
            <p> Artist(s): Charlie Adlard and Cliff Rathburn </p>
            <p> Publisher: Image Comics</p>
            <p> Price: $17 </p>
        </div>

        <div class="col-md-3 col-sm-6 col-xs-12">
            <h3> The World of Ice & Fire: The Untold History of Westeros and the Game of Thrones </h3>
            <img src="images/IibDqjf.jpg" alt="game of thrones" class="img-rounded" width="250" height="350"/>
            <!-- George R.R. Martin, the world of ice & fire [Online Image]. (2014). Retrieved April 10, 2016, from: http://imgur.com/IibDqjf -->
            <p> Author(s): George R.R. Martin and Elio Garcia </p>
            <p> Publisher(s): Bantam Books (US, Canada), Voyager Books (UK, Australia) </p>
            <p> Price: $29 </p>
        </div>
    </div>
</div>

<div class="container">
    <div class="row links">
        <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="contact.aspx"><img src="images/grey_new_seo2-41-512.png" alt="contact icon" class="img-circle"/></a>
                                   <!-- Reen, L. (n.d.). Call, communication, connect, contact, contac [Online Image]. Retrieved from: https://www.iconfinder.com/icons/342445/call_communication_connect_contact_contact_info_contact_us_email_icon -->
            <h2> Get In Touch </h2>
            <p> Please click the image above to contact us for any enquiries you may have </p>
        </div>

        <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="BookProducts.aspx"><img src="images/book_stack.png" alt="products" class="img-circle"/></a>
            <!-- Book, stack icon [Online Image]. (n.d.). Retrieved March 20, 2016, from: https://www.iconfinder.com/icons/175335/book_stack_icon -->
            <h2> Our Products </h2>
            <p> Please click the image above to view our products/ books </p>
        </div>
                 
        <div class="col-md-4 col-sm-4 col-xs-12">
            <a href="accounts/Accountreg.aspx"><img src="images/users_woman-512.png" alt="communication" class="img-circle"/></a>
            <!-- Ryazancev, A. (n.d). Account, accounts, female, group, profile, use [Online Image]. Retrieved from: https://www.iconfinder.com/GlumPix -->
            <h3> Register With Us </h3>
            <p> Please click the image above to register </p>
        </div>
    </div>
</div>
</asp:Content>

