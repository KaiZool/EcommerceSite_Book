<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BookManga.aspx.cs" Inherits="BookManga" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<!-- getbootstrap.com (n.d.). Default navbar [Codings]. Retrieved April 22, 2016 from: http://getbootstrap.com/components/#navbar -->
<!-- Start, Nav Header -->
<nav class="navbar navbar-default nav-bar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
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
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Categories <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li ><a href="bookcomics.aspx"> Comics </a></li>
                                <li role="separator" class="divider"></li>
                                <li class="active"><a href="bookmangas.aspx"> Manga </a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="booknovels.aspx">Novels</a></li>
                            </ul>
                        </li>
                    </ul>
                    
             <!-- <asp:Button ID="btnlogin" runat="server" Text="Logout" CssClass="btnlogin" /> -->

      
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><asp:Label ID="lblwelcome" runat="server" Text=""></asp:Label></a></li>
                    <li><a href="admin/logadmin.aspx"> Admin </a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> Account <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="users/userregister.aspx"> Register </a></li>
                            <li><a href="users/userlogin.aspx"> Login </a></li>
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
            <h2> View our Manga </h2>
        </div>

<div class="row manga">
  <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/thumb-535-dn_5_300x450.jpg" alt="death note 5" width="200" height="300"/>
        <!-- Death Note, Vol. 5 [Online Image]. (n.d.). Retrieved March 29, 2016 from: http://www.amazon.com/Death-Note-Vol-Tsugumi-Ohba/dp/1421506262 -->
    </a>
    <p> Title: Daeth Note Vol 5 </p>
    <p> Author(s): Tsugumi & Takeshi </p>
    <p> ISB: 1421506262 </p>
    <p> Price: $17</p>
  </div>
  <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/thumb-541-dn_08_300x450.jpg" alt="death note vol 10" width="200" height="300"/>
        <!-- www.viz.com. (n.d.). Death Note, Volume 8 [Online Image].Retieved May 10, 2016, from: http://www.viz.com/read/manga/death-note-vol-8/5890 -->
    </a>
    <p> Title: Daeth Note Vol 8 </p>
    <p> Author(s): Tsugumi & Takeshi </p>
    <p> ISB: 1421506297 </p>
    <p> Priice: $17</p>
  </div>

    <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/61wt-TJqcVL.jpg" alt="assassination classroom 1" width="200" height="300"/>
         <!-- amazon.com. (n.d.). Assassination Classroom, Vol. 1 [Online Image]. Retrieved May 11, 2016, from: http://www.amazon.com/Assassination-Classroom-Vol-Yusei-Matsui/dp/1421576074 -->
    </a>
    <p> Title: Assassination Classroom, Vol. 1 </p>
    <p> Author: Yusei Matsui </p>
    <p> ISB: 1421576074 </p>
    <p> Price: $15</p>
  </div>
  
    <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/Assassination-Classroom-Vol.-2-Cover.jpg" alt="assassination classroom 2" width="200" height="300"/>
        <!-- amazon.com. (n.d.). Assassination Classroom, Vol. 2 [Online Image]. Retrieved May 10, 2016, from: http://www.amazon.com/Assassination-Classroom-Vol-Yusei-Matsui/dp/1421576082/ref=sr_1_2?s=books&ie=UTF8&qid=1462916667&sr=1-2&keywords=assassination+classroom -->
    </a>
    <p> Title: Assassination Classroom, Vol. 2 </p>
    <p> Author: Yusei Matsui </p>
    <p> ISB: 1421576082 </p>
    <p> Price: $15</p>
  </div>

    <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/jojosbizarreadventure1.jpg" alt="jojos bizarre adventure" width="200" height="300"/>
        <!-- amazon.com. (n.d.). JoJo's Bizarre Adventure: Part 1--Phantom Blood, Vol. 1 [Online Image]. Retrieved May 10, 2016, from: http://www.amazon.com/JoJos-Bizarre-Adventure-1-Phantom-Blood/dp/1421578794 -->
    </a>
    <p> Title: JBA: Part 1-PB, Vol. 1</p>
    <p> Author: Hirohiko Araki</p>
    <p> ISB: 1421578794</p>
    <p> Price: $20 </p>
  </div>

    <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/yakitate-japan-manga-vol-19.jpg" alt="Yakitate Japan" width="200" height="300"/>
        <!-- Acuña, J. (n.d.). Yakitate! Japan Vol. 19 [Online Image]. Retrieved April 1, 2016, from: https://www.pinterest.com/pin/307722587010979964/ -->
    </a>
    <p> Title: Yakitate!! Japan, Vol. 1</p>
    <p> Author: Takashi Hashiguchi</p>
    <p> ISB: 1421522365 </p>
    <p> Price: $20</p>
  </div>

  <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/616H5YViZaL._AC_UL320_SR222,320_.jpg" alt="JUDGE, Vol. 4 " width="200" height="300"/>
         <!-- amazon.com. (n.d.). JUDGE, Vol. 4  [Online Image]. Retrieved May 10, 2016, from: http://www.amazon.com/JUDGE-Vol-4-Yoshiki-Tonogai/dp/0316240346/ref=pd_bxgy_14_img_3?ie=UTF8&refRID=0Q9XB8F32V7KZFPXPFP4 -->
    </a>
    <p> Title: JUDGE, Vol. 4 </p>
    <p> Author:  Yoshiki Tonogai </p>
    <p> ISB: 0316240346 </p>
    <p> Price: 16</p>
  </div>

    <div class="col-xs-6 col-md-3 manga">
    <a href="#" class="thumbnail">
        <img src="images/Yellow_Scarves_Manga_volume_2.jpg" width="200" height="300"/>
        <!-- durarara.wikia.com. (n.d.). Yellow Scarves Arc Volume 2 Manga Volume 9 [Online Image]. Retrieved May, 10, 2016, from: http://durarara.wikia.com/wiki/Durarara!!_Yellow_Scarves_Arc_Volume_02 -->
    </a>
    <p> Title: DRRR!! Yellow Scarves Arc (Book 2) </p>
    <p> Author: Ryohgo Narita (Author), Akiyo Satorigi (Illustrator)</p>
    <p> ISB: 031633703X </p>
    <p> Priice: $23</p>
  </div>
</div>
</asp:Content>

